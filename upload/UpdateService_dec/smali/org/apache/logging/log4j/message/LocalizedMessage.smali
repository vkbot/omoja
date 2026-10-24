.class public Lorg/apache/logging/log4j/message/LocalizedMessage;
.super Ljava/lang/Object;
.source "LocalizedMessage.java"

# interfaces
.implements Lorg/apache/logging/log4j/message/Message;
.implements Lorg/apache/logging/log4j/message/LoggerNameAwareMessage;


# static fields
.field private static final serialVersionUID:J = 0x360936f7fcf5c176L


# instance fields
.field private transient argArray:[Ljava/lang/Object;

.field private baseName:Ljava/lang/String;

.field private formattedMessage:Ljava/lang/String;

.field private key:Ljava/lang/String;

.field private final locale:Ljava/util/Locale;

.field private transient logger:Lorg/apache/logging/log4j/status/StatusLogger;

.field private loggerName:Ljava/lang/String;

.field private transient resourceBundle:Ljava/util/ResourceBundle;

.field private stringArgs:[Ljava/lang/String;

.field private transient throwable:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
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

    .line 98
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Ljava/util/ResourceBundle;

    check-cast v0, Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-direct {p0, v1, v0, p1, v2}, Lorg/apache/logging/log4j/message/LocalizedMessage;-><init>(Ljava/util/ResourceBundle;Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
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

    .line 129
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Ljava/util/ResourceBundle;

    check-cast v0, Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    invoke-direct {p0, v1, v0, p1, v2}, Lorg/apache/logging/log4j/message/LocalizedMessage;-><init>(Ljava/util/ResourceBundle;Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "baseName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "arg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "baseName",
            "key",
            "arg"
        }
    .end annotation

    .line 102
    const/4 v0, 0x0

    check-cast v0, Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-direct {p0, p1, v0, p2, v1}, Lorg/apache/logging/log4j/message/LocalizedMessage;-><init>(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p1, "baseName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
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
            "baseName",
            "key",
            "arg1",
            "arg2"
        }
    .end annotation

    .line 133
    const/4 v0, 0x0

    check-cast v0, Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    const/4 v2, 0x1

    aput-object p4, v1, v2

    invoke-direct {p0, p1, v0, p2, v1}, Lorg/apache/logging/log4j/message/LocalizedMessage;-><init>(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "baseName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "arguments"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "baseName",
            "key",
            "arguments"
        }
    .end annotation

    .line 67
    const/4 v0, 0x0

    check-cast v0, Ljava/util/Locale;

    invoke-direct {p0, p1, v0, p2, p3}, Lorg/apache/logging/log4j/message/LocalizedMessage;-><init>(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "baseName"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "arg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "baseName",
            "locale",
            "key",
            "arg"
        }
    .end annotation

    .line 117
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p4, v0, v1

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/logging/log4j/message/LocalizedMessage;-><init>(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "baseName"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "arg1"    # Ljava/lang/Object;
    .param p5, "arg2"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "baseName",
            "locale",
            "key",
            "arg1",
            "arg2"
        }
    .end annotation

    .line 142
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p4, v0, v1

    const/4 v1, 0x1

    aput-object p5, v0, v1

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/logging/log4j/message/LocalizedMessage;-><init>(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 143
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "baseName"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "arguments"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "baseName",
            "locale",
            "key",
            "arguments"
        }
    .end annotation

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/message/LocalizedMessage;->logger:Lorg/apache/logging/log4j/status/StatusLogger;

    .line 75
    iput-object p3, p0, Lorg/apache/logging/log4j/message/LocalizedMessage;->key:Ljava/lang/String;

    .line 76
    iput-object p4, p0, Lorg/apache/logging/log4j/message/LocalizedMessage;->argArray:[Ljava/lang/Object;

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/logging/log4j/message/LocalizedMessage;->throwable:Ljava/lang/Throwable;

    .line 78
    iput-object p1, p0, Lorg/apache/logging/log4j/message/LocalizedMessage;->baseName:Ljava/lang/String;

    .line 79
    iput-object v0, p0, Lorg/apache/logging/log4j/message/LocalizedMessage;->resourceBundle:Ljava/util/ResourceBundle;

    .line 80
    iput-object p2, p0, Lorg/apache/logging/log4j/message/LocalizedMessage;->locale:Ljava/util/Locale;

    .line 81
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
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

    .line 63
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Ljava/util/ResourceBundle;

    check-cast v0, Ljava/util/Locale;

    invoke-direct {p0, v1, v0, p1, p2}, Lorg/apache/logging/log4j/message/LocalizedMessage;-><init>(Ljava/util/ResourceBundle;Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "arg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "locale",
            "key",
            "arg"
        }
    .end annotation

    .line 125
    const/4 v0, 0x0

    check-cast v0, Ljava/util/ResourceBundle;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-direct {p0, v0, p1, p2, v1}, Lorg/apache/logging/log4j/message/LocalizedMessage;-><init>(Ljava/util/ResourceBundle;Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "key"    # Ljava/lang/String;
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
            "key",
            "arg1",
            "arg2"
        }
    .end annotation

    .line 151
    const/4 v0, 0x0

    check-cast v0, Ljava/util/ResourceBundle;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    const/4 v2, 0x1

    aput-object p4, v1, v2

    invoke-direct {p0, v0, p1, p2, v1}, Lorg/apache/logging/log4j/message/LocalizedMessage;-><init>(Ljava/util/ResourceBundle;Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "arguments"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "locale",
            "key",
            "arguments"
        }
    .end annotation

    .line 94
    const/4 v0, 0x0

    check-cast v0, Ljava/util/ResourceBundle;

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/apache/logging/log4j/message/LocalizedMessage;-><init>(Ljava/util/ResourceBundle;Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    return-void
.end method

.method public constructor <init>(Ljava/util/ResourceBundle;Ljava/lang/String;)V
    .locals 2
    .param p1, "bundle"    # Ljava/util/ResourceBundle;
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "bundle",
            "key"
        }
    .end annotation

    .line 109
    const/4 v0, 0x0

    check-cast v0, Ljava/util/Locale;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0, p2, v1}, Lorg/apache/logging/log4j/message/LocalizedMessage;-><init>(Ljava/util/ResourceBundle;Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    return-void
.end method

.method public constructor <init>(Ljava/util/ResourceBundle;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "bundle"    # Ljava/util/ResourceBundle;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "arg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "bundle",
            "key",
            "arg"
        }
    .end annotation

    .line 113
    const/4 v0, 0x0

    check-cast v0, Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-direct {p0, p1, v0, p2, v1}, Lorg/apache/logging/log4j/message/LocalizedMessage;-><init>(Ljava/util/ResourceBundle;Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    return-void
.end method

.method public constructor <init>(Ljava/util/ResourceBundle;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p1, "bundle"    # Ljava/util/ResourceBundle;
    .param p2, "key"    # Ljava/lang/String;
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
            "bundle",
            "key",
            "arg1",
            "arg2"
        }
    .end annotation

    .line 137
    const/4 v0, 0x0

    check-cast v0, Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    const/4 v2, 0x1

    aput-object p4, v1, v2

    invoke-direct {p0, p1, v0, p2, v1}, Lorg/apache/logging/log4j/message/LocalizedMessage;-><init>(Ljava/util/ResourceBundle;Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    return-void
.end method

.method public constructor <init>(Ljava/util/ResourceBundle;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "bundle"    # Ljava/util/ResourceBundle;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "arguments"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "bundle",
            "key",
            "arguments"
        }
    .end annotation

    .line 71
    const/4 v0, 0x0

    check-cast v0, Ljava/util/Locale;

    invoke-direct {p0, p1, v0, p2, p3}, Lorg/apache/logging/log4j/message/LocalizedMessage;-><init>(Ljava/util/ResourceBundle;Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/util/ResourceBundle;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "bundle"    # Ljava/util/ResourceBundle;
    .param p2, "locale"    # Ljava/util/Locale;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "arg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "bundle",
            "locale",
            "key",
            "arg"
        }
    .end annotation

    .line 121
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p4, v0, v1

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/logging/log4j/message/LocalizedMessage;-><init>(Ljava/util/ResourceBundle;Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    return-void
.end method

.method public constructor <init>(Ljava/util/ResourceBundle;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "bundle"    # Ljava/util/ResourceBundle;
    .param p2, "locale"    # Ljava/util/Locale;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "arg1"    # Ljava/lang/Object;
    .param p5, "arg2"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "bundle",
            "locale",
            "key",
            "arg1",
            "arg2"
        }
    .end annotation

    .line 147
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p4, v0, v1

    const/4 v1, 0x1

    aput-object p5, v0, v1

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/logging/log4j/message/LocalizedMessage;-><init>(Ljava/util/ResourceBundle;Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    return-void
.end method

.method public constructor <init>(Ljava/util/ResourceBundle;Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "bundle"    # Ljava/util/ResourceBundle;
    .param p2, "locale"    # Ljava/util/Locale;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "arguments"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "bundle",
            "locale",
            "key",
            "arguments"
        }
    .end annotation

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/message/LocalizedMessage;->logger:Lorg/apache/logging/log4j/status/StatusLogger;

    .line 85
    iput-object p3, p0, Lorg/apache/logging/log4j/message/LocalizedMessage;->key:Ljava/lang/String;

    .line 86
    iput-object p4, p0, Lorg/apache/logging/log4j/message/LocalizedMessage;->argArray:[Ljava/lang/Object;

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/logging/log4j/message/LocalizedMessage;->throwable:Ljava/lang/Throwable;

    .line 88
    iput-object v0, p0, Lorg/apache/logging/log4j/message/LocalizedMessage;->baseName:Ljava/lang/String;

    .line 89
    iput-object p1, p0, Lorg/apache/logging/log4j/message/LocalizedMessage;->resourceBundle:Ljava/util/ResourceBundle;

    .line 90
    iput-object p2, p0, Lorg/apache/logging/log4j/message/LocalizedMessage;->locale:Ljava/util/Locale;

    .line 91
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
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

    .line 287
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 288
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/message/LocalizedMessage;->formattedMessage:Ljava/lang/String;

    .line 289
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/message/LocalizedMessage;->key:Ljava/lang/String;

    .line 290
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/message/LocalizedMessage;->baseName:Ljava/lang/String;

    .line 291
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    .line 292
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/logging/log4j/message/LocalizedMessage;->stringArgs:[Ljava/lang/String;

    .line 293
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/message/LocalizedMessage;->logger:Lorg/apache/logging/log4j/status/StatusLogger;

    .line 294
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/logging/log4j/message/LocalizedMessage;->resourceBundle:Ljava/util/ResourceBundle;

    .line 295
    iput-object v0, p0, Lorg/apache/logging/log4j/message/LocalizedMessage;->argArray:[Ljava/lang/Object;

    .line 296
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

    .line 271
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 272
    invoke-virtual {p0}, Lorg/apache/logging/log4j/message/LocalizedMessage;->getFormattedMessage()Ljava/lang/String;

    .line 273
    iget-object v0, p0, Lorg/apache/logging/log4j/message/LocalizedMessage;->formattedMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lorg/apache/logging/log4j/message/LocalizedMessage;->key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 275
    iget-object v0, p0, Lorg/apache/logging/log4j/message/LocalizedMessage;->baseName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, Lorg/apache/logging/log4j/message/LocalizedMessage;->argArray:[Ljava/lang/Object;

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 277
    iget-object v0, p0, Lorg/apache/logging/log4j/message/LocalizedMessage;->argArray:[Ljava/lang/Object;

    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lorg/apache/logging/log4j/message/LocalizedMessage;->stringArgs:[Ljava/lang/String;

    .line 278
    const/4 v1, 0x0

    .line 279
    .local v1, "i":I
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 280
    .local v4, "obj":Ljava/lang/Object;
    iget-object v5, p0, Lorg/apache/logging/log4j/message/LocalizedMessage;->stringArgs:[Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    .line 281
    nop

    .end local v4    # "obj":Ljava/lang/Object;
    add-int/lit8 v1, v1, 0x1

    .line 279
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 283
    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/message/LocalizedMessage;->stringArgs:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 284
    return-void
.end method


# virtual methods
.method public getFormat()Ljava/lang/String;
    .locals 1

    .line 203
    iget-object v0, p0, Lorg/apache/logging/log4j/message/LocalizedMessage;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getFormattedMessage()Ljava/lang/String;
    .locals 6

    .line 181
    iget-object v0, p0, Lorg/apache/logging/log4j/message/LocalizedMessage;->formattedMessage:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 182
    return-object v0

    .line 184
    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/message/LocalizedMessage;->resourceBundle:Ljava/util/ResourceBundle;

    .line 185
    .local v0, "bundle":Ljava/util/ResourceBundle;
    if-nez v0, :cond_2

    .line 186
    iget-object v1, p0, Lorg/apache/logging/log4j/message/LocalizedMessage;->baseName:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 187
    iget-object v2, p0, Lorg/apache/logging/log4j/message/LocalizedMessage;->locale:Ljava/util/Locale;

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lorg/apache/logging/log4j/message/LocalizedMessage;->getResourceBundle(Ljava/lang/String;Ljava/util/Locale;Z)Ljava/util/ResourceBundle;

    move-result-object v0

    goto :goto_0

    .line 189
    :cond_1
    iget-object v1, p0, Lorg/apache/logging/log4j/message/LocalizedMessage;->loggerName:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/logging/log4j/message/LocalizedMessage;->locale:Ljava/util/Locale;

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lorg/apache/logging/log4j/message/LocalizedMessage;->getResourceBundle(Ljava/lang/String;Ljava/util/Locale;Z)Ljava/util/ResourceBundle;

    move-result-object v0

    .line 192
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lorg/apache/logging/log4j/message/LocalizedMessage;->getFormat()Ljava/lang/String;

    move-result-object v1

    .line 193
    .local v1, "myKey":Ljava/lang/String;
    if-eqz v0, :cond_4

    invoke-virtual {v0, v1}, Ljava/util/ResourceBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_4
    :goto_1
    move-object v2, v1

    .line 194
    .local v2, "msgPattern":Ljava/lang/String;
    :goto_2
    iget-object v3, p0, Lorg/apache/logging/log4j/message/LocalizedMessage;->argArray:[Ljava/lang/Object;

    if-nez v3, :cond_5

    iget-object v3, p0, Lorg/apache/logging/log4j/message/LocalizedMessage;->stringArgs:[Ljava/lang/String;

    .line 195
    .local v3, "array":[Ljava/lang/Object;
    :cond_5
    new-instance v4, Lorg/apache/logging/log4j/message/FormattedMessage;

    invoke-direct {v4, v2, v3}, Lorg/apache/logging/log4j/message/FormattedMessage;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 196
    .local v4, "msg":Lorg/apache/logging/log4j/message/FormattedMessage;
    invoke-virtual {v4}, Lorg/apache/logging/log4j/message/FormattedMessage;->getFormattedMessage()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/logging/log4j/message/LocalizedMessage;->formattedMessage:Ljava/lang/String;

    .line 197
    invoke-virtual {v4}, Lorg/apache/logging/log4j/message/FormattedMessage;->getThrowable()Ljava/lang/Throwable;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/logging/log4j/message/LocalizedMessage;->throwable:Ljava/lang/Throwable;

    .line 198
    iget-object v5, p0, Lorg/apache/logging/log4j/message/LocalizedMessage;->formattedMessage:Ljava/lang/String;

    return-object v5
.end method

.method public getLoggerName()Ljava/lang/String;
    .locals 1

    .line 171
    iget-object v0, p0, Lorg/apache/logging/log4j/message/LocalizedMessage;->loggerName:Ljava/lang/String;

    return-object v0
.end method

.method public getParameters()[Ljava/lang/Object;
    .locals 1

    .line 208
    iget-object v0, p0, Lorg/apache/logging/log4j/message/LocalizedMessage;->argArray:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 209
    return-object v0

    .line 211
    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/message/LocalizedMessage;->stringArgs:[Ljava/lang/String;

    return-object v0
.end method

.method protected getResourceBundle(Ljava/lang/String;Ljava/util/Locale;Z)Ljava/util/ResourceBundle;
    .locals 7
    .param p1, "rbBaseName"    # Ljava/lang/String;
    .param p2, "resourceBundleLocale"    # Ljava/util/Locale;
    .param p3, "loop"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "rbBaseName",
            "resourceBundleLocale",
            "loop"
        }
    .end annotation

    .line 230
    const/4 v0, 0x0

    .line 232
    .local v0, "rb":Ljava/util/ResourceBundle;
    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 233
    return-object v1

    .line 236
    :cond_0
    const-string v2, "Unable to locate ResourceBundle "

    if-eqz p2, :cond_1

    .line 237
    :try_start_0
    invoke-static {p1, p2}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 239
    :cond_1
    invoke-static {p1}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v1
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 246
    :goto_0
    goto :goto_1

    .line 241
    :catch_0
    move-exception v3

    .line 242
    .local v3, "ex":Ljava/util/MissingResourceException;
    if-nez p3, :cond_2

    .line 243
    iget-object v4, p0, Lorg/apache/logging/log4j/message/LocalizedMessage;->logger:Lorg/apache/logging/log4j/status/StatusLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lorg/apache/logging/log4j/status/StatusLogger;->debug(Ljava/lang/String;)V

    .line 244
    return-object v1

    .line 248
    .end local v3    # "ex":Ljava/util/MissingResourceException;
    :cond_2
    :goto_1
    move-object v1, p1

    .line 250
    .local v1, "substr":Ljava/lang/String;
    :goto_2
    if-nez v0, :cond_4

    const/16 v3, 0x2e

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    move v4, v3

    .local v4, "i":I
    if-lez v3, :cond_4

    .line 251
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 253
    if-eqz p2, :cond_3

    .line 254
    :try_start_1
    invoke-static {v1, p2}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v3

    move-object v0, v3

    goto :goto_3

    .line 256
    :cond_3
    invoke-static {v1}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v3
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v3

    goto :goto_3

    .line 258
    :catch_1
    move-exception v3

    .line 259
    .restart local v3    # "ex":Ljava/util/MissingResourceException;
    iget-object v5, p0, Lorg/apache/logging/log4j/message/LocalizedMessage;->logger:Lorg/apache/logging/log4j/status/StatusLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/logging/log4j/status/StatusLogger;->debug(Ljava/lang/String;)V

    .line 260
    .end local v3    # "ex":Ljava/util/MissingResourceException;
    :goto_3
    goto :goto_2

    .line 262
    .end local v4    # "i":I
    :cond_4
    return-object v0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .locals 1

    .line 216
    iget-object v0, p0, Lorg/apache/logging/log4j/message/LocalizedMessage;->throwable:Ljava/lang/Throwable;

    return-object v0
.end method

.method public setLoggerName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "name"
        }
    .end annotation

    .line 161
    iput-object p1, p0, Lorg/apache/logging/log4j/message/LocalizedMessage;->loggerName:Ljava/lang/String;

    .line 162
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 267
    invoke-virtual {p0}, Lorg/apache/logging/log4j/message/LocalizedMessage;->getFormattedMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
