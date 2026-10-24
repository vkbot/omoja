.class public Lorg/apache/ftpserver/command/impl/OPTS_MLST;
.super Lorg/apache/ftpserver/command/AbstractCommand;
.source "OPTS_MLST.java"


# static fields
.field private static final AVAILABLE_TYPES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 45
    const-string v0, "Size"

    const-string v1, "Modify"

    const-string v2, "Type"

    const-string v3, "Perm"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/ftpserver/command/impl/OPTS_MLST;->AVAILABLE_TYPES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Lorg/apache/ftpserver/command/AbstractCommand;-><init>()V

    return-void
.end method

.method private validateSelectedTypes([Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .param p1, "types"    # [Ljava/lang/String;

    .line 93
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 94
    new-array v0, v0, [Ljava/lang/String;

    return-object v0

    .line 97
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .local v1, "selectedTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_3

    .line 100
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    sget-object v4, Lorg/apache/ftpserver/command/impl/OPTS_MLST;->AVAILABLE_TYPES:[Ljava/lang/String;

    array-length v5, v4

    if-ge v3, v5, :cond_2

    .line 101
    aget-object v4, v4, v3

    aget-object v5, p1, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 102
    sget-object v4, Lorg/apache/ftpserver/command/impl/OPTS_MLST;->AVAILABLE_TYPES:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    goto :goto_2

    .line 100
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 99
    .end local v3    # "j":I
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 108
    .end local v2    # "i":I
    :cond_3
    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public execute(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/impl/FtpServerContext;Lorg/apache/ftpserver/ftplet/FtpRequest;)V
    .locals 11
    .param p1, "session"    # Lorg/apache/ftpserver/impl/FtpIoSession;
    .param p2, "context"    # Lorg/apache/ftpserver/impl/FtpServerContext;
    .param p3, "request"    # Lorg/apache/ftpserver/ftplet/FtpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/ftpserver/ftplet/FtpException;
        }
    .end annotation

    .line 56
    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->resetState()V

    .line 59
    invoke-interface {p3}, Lorg/apache/ftpserver/ftplet/FtpRequest;->getArgument()Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "argument":Ljava/lang/String;
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 64
    .local v1, "spIndex":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 65
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    .line 66
    .local v2, "types":[Ljava/lang/String;
    const-string v3, ""

    move-object v9, v3

    .local v3, "listTypes":Ljava/lang/String;
    goto :goto_1

    .line 68
    .end local v2    # "types":[Ljava/lang/String;
    .end local v3    # "listTypes":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 71
    .restart local v3    # "listTypes":Ljava/lang/String;
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v4, ";"

    invoke-direct {v2, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .local v2, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    .line 73
    .local v4, "types":[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v6, v4

    if-ge v5, v6, :cond_1

    .line 74
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 73
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    move-object v9, v3

    move-object v2, v4

    .line 78
    .end local v3    # "listTypes":Ljava/lang/String;
    .end local v4    # "types":[Ljava/lang/String;
    .end local v5    # "i":I
    .local v2, "types":[Ljava/lang/String;
    .local v9, "listTypes":Ljava/lang/String;
    :goto_1
    invoke-direct {p0, v2}, Lorg/apache/ftpserver/command/impl/OPTS_MLST;->validateSelectedTypes([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 79
    .local v10, "validatedTypes":[Ljava/lang/String;
    if-eqz v10, :cond_2

    .line 80
    const-string v3, "MLST.types"

    invoke-virtual {p1, v3, v10}, Lorg/apache/ftpserver/impl/FtpIoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const/16 v6, 0xc8

    const-string v7, "OPTS.MLST"

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    move-object v8, v9

    invoke-static/range {v3 .. v8}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;

    goto :goto_2

    .line 84
    :cond_2
    const/16 v6, 0x1f5

    const-string v7, "OPTS.MLST"

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    move-object v8, v9

    invoke-static/range {v3 .. v8}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;

    .line 88
    :goto_2
    return-void
.end method
