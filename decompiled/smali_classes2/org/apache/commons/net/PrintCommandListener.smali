.class public Lorg/apache/commons/net/PrintCommandListener;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lorg/apache/commons/net/ProtocolCommandListener;


# static fields
.field private static final CMD_LOGIN:Ljava/lang/String; = "LOGIN"

.field private static final CMD_PASS:Ljava/lang/String; = "PASS"

.field private static final CMD_USER:Ljava/lang/String; = "USER"

.field private static final DIRECTION_MARKER_RECEIVE:Ljava/lang/String; = "< "

.field private static final DIRECTION_MARKER_SEND:Ljava/lang/String; = "> "

.field private static final HIDDEN_MARKER:Ljava/lang/String; = " *******"


# instance fields
.field private final eolMarker:C

.field private final noLogin:Z

.field private final showDirection:Z

.field private final writer:Ljava/io/PrintWriter;


# direct methods
.method public constructor <init>(Ljava/io/PrintStream;)V
    .locals 0

    .line 24
    invoke-static {p1}, Lorg/apache/commons/net/io/Util;->newPrintWriter(Ljava/io/PrintStream;)Ljava/io/PrintWriter;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/net/PrintCommandListener;-><init>(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/PrintStream;Z)V
    .locals 0

    .line 18
    invoke-static {p1}, Lorg/apache/commons/net/io/Util;->newPrintWriter(Ljava/io/PrintStream;)Ljava/io/PrintWriter;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/net/PrintCommandListener;-><init>(Ljava/io/PrintWriter;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/PrintStream;ZC)V
    .locals 0

    .line 19
    invoke-static {p1}, Lorg/apache/commons/net/io/Util;->newPrintWriter(Ljava/io/PrintStream;)Ljava/io/PrintWriter;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/net/PrintCommandListener;-><init>(Ljava/io/PrintWriter;ZC)V

    return-void
.end method

.method public constructor <init>(Ljava/io/PrintStream;ZCZ)V
    .locals 0

    .line 20
    invoke-static {p1}, Lorg/apache/commons/net/io/Util;->newPrintWriter(Ljava/io/PrintStream;)Ljava/io/PrintWriter;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/net/PrintCommandListener;-><init>(Ljava/io/PrintWriter;ZCZ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/PrintWriter;)V
    .locals 1

    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/net/PrintCommandListener;-><init>(Ljava/io/PrintWriter;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/PrintWriter;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/net/PrintCommandListener;-><init>(Ljava/io/PrintWriter;ZC)V

    return-void
.end method

.method public constructor <init>(Ljava/io/PrintWriter;ZC)V
    .locals 1

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/net/PrintCommandListener;-><init>(Ljava/io/PrintWriter;ZCZ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/PrintWriter;ZCZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "writer"

    .line 5
    .line 6
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lorg/apache/commons/net/PrintCommandListener;->writer:Ljava/io/PrintWriter;

    .line 10
    .line 11
    iput-boolean p2, p0, Lorg/apache/commons/net/PrintCommandListener;->noLogin:Z

    .line 12
    .line 13
    iput-char p3, p0, Lorg/apache/commons/net/PrintCommandListener;->eolMarker:C

    .line 14
    .line 15
    iput-boolean p4, p0, Lorg/apache/commons/net/PrintCommandListener;->showDirection:Z

    .line 16
    .line 17
    return-void
.end method

.method private getCommand(Lorg/apache/commons/net/ProtocolCommandEvent;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lorg/apache/commons/net/ProtocolCommandEvent;->getCommand()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method private getMessage(Lorg/apache/commons/net/ProtocolCommandEvent;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p1}, Lorg/apache/commons/net/ProtocolCommandEvent;->getMessage()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method private getPrintableString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-char v0, p0, Lorg/apache/commons/net/PrintCommandListener;->eolMarker:C

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-object p1

    .line 6
    :cond_0
    const-string v0, "\r\n"

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-lez v0, :cond_1

    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v2, "1"

    .line 17
    .line 18
    invoke-virtual {p1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    iget-char v2, p0, Lorg/apache/commons/net/PrintCommandListener;->eolMarker:C

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    :cond_1
    return-object p1
.end method


# virtual methods
.method public protocolCommandSent(Lorg/apache/commons/net/ProtocolCommandEvent;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/net/PrintCommandListener;->showDirection:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lorg/apache/commons/net/PrintCommandListener;->writer:Ljava/io/PrintWriter;

    .line 6
    .line 7
    const-string v1, "> "

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-boolean v0, p0, Lorg/apache/commons/net/PrintCommandListener;->noLogin:Z

    .line 13
    .line 14
    if-eqz v0, :cond_4

    .line 15
    .line 16
    invoke-direct {p0, p1}, Lorg/apache/commons/net/PrintCommandListener;->getCommand(Lorg/apache/commons/net/ProtocolCommandEvent;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "PASS"

    .line 21
    .line 22
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    const-string v2, " *******"

    .line 27
    .line 28
    if-nez v1, :cond_3

    .line 29
    .line 30
    const-string v1, "USER"

    .line 31
    .line 32
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const-string v1, "LOGIN"

    .line 40
    .line 41
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    invoke-direct {p0, p1}, Lorg/apache/commons/net/PrintCommandListener;->getMessage(Lorg/apache/commons/net/ProtocolCommandEvent;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    add-int/lit8 v0, v0, 0x5

    .line 56
    .line 57
    const/4 v1, 0x0

    .line 58
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    iget-object v0, p0, Lorg/apache/commons/net/PrintCommandListener;->writer:Ljava/io/PrintWriter;

    .line 63
    .line 64
    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iget-object p1, p0, Lorg/apache/commons/net/PrintCommandListener;->writer:Ljava/io/PrintWriter;

    .line 68
    .line 69
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/net/PrintCommandListener;->writer:Ljava/io/PrintWriter;

    .line 74
    .line 75
    invoke-direct {p0, p1}, Lorg/apache/commons/net/PrintCommandListener;->getMessage(Lorg/apache/commons/net/ProtocolCommandEvent;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-direct {p0, p1}, Lorg/apache/commons/net/PrintCommandListener;->getPrintableString(Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_3
    :goto_0
    iget-object p1, p0, Lorg/apache/commons/net/PrintCommandListener;->writer:Ljava/io/PrintWriter;

    .line 88
    .line 89
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    iget-object p1, p0, Lorg/apache/commons/net/PrintCommandListener;->writer:Ljava/io/PrintWriter;

    .line 93
    .line 94
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_4
    iget-object v0, p0, Lorg/apache/commons/net/PrintCommandListener;->writer:Ljava/io/PrintWriter;

    .line 99
    .line 100
    invoke-direct {p0, p1}, Lorg/apache/commons/net/PrintCommandListener;->getMessage(Lorg/apache/commons/net/ProtocolCommandEvent;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-direct {p0, p1}, Lorg/apache/commons/net/PrintCommandListener;->getPrintableString(Ljava/lang/String;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    :goto_1
    iget-object p1, p0, Lorg/apache/commons/net/PrintCommandListener;->writer:Ljava/io/PrintWriter;

    .line 112
    .line 113
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 114
    .line 115
    .line 116
    return-void
.end method

.method public protocolReplyReceived(Lorg/apache/commons/net/ProtocolCommandEvent;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/net/PrintCommandListener;->showDirection:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lorg/apache/commons/net/PrintCommandListener;->writer:Ljava/io/PrintWriter;

    .line 6
    .line 7
    const-string v1, "< "

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/commons/net/PrintCommandListener;->getMessage(Lorg/apache/commons/net/ProtocolCommandEvent;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    add-int/lit8 v0, v0, -0x1

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    iget-object v1, p0, Lorg/apache/commons/net/PrintCommandListener;->writer:Ljava/io/PrintWriter;

    .line 27
    .line 28
    invoke-virtual {v1, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const/16 p1, 0xd

    .line 32
    .line 33
    if-eq v0, p1, :cond_1

    .line 34
    .line 35
    const/16 p1, 0xa

    .line 36
    .line 37
    if-eq v0, p1, :cond_1

    .line 38
    .line 39
    iget-object p1, p0, Lorg/apache/commons/net/PrintCommandListener;->writer:Ljava/io/PrintWriter;

    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 42
    .line 43
    .line 44
    :cond_1
    iget-object p1, p0, Lorg/apache/commons/net/PrintCommandListener;->writer:Ljava/io/PrintWriter;

    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 47
    .line 48
    .line 49
    return-void
.end method
