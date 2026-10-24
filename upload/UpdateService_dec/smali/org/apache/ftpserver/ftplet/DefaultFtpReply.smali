.class public Lorg/apache/ftpserver/ftplet/DefaultFtpReply;
.super Ljava/lang/Object;
.source "DefaultFtpReply.java"

# interfaces
.implements Lorg/apache/ftpserver/ftplet/FtpReply;


# static fields
.field private static final CRLF:Ljava/lang/String; = "\r\n"


# instance fields
.field private code:I

.field private message:Ljava/lang/String;

.field private sentTime:J


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 2
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/ftpserver/ftplet/DefaultFtpReply;->sentTime:J

    .line 47
    iput p1, p0, Lorg/apache/ftpserver/ftplet/DefaultFtpReply;->code:I

    .line 48
    iput-object p2, p0, Lorg/apache/ftpserver/ftplet/DefaultFtpReply;->message:Ljava/lang/String;

    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ftpserver/ftplet/DefaultFtpReply;->sentTime:J

    .line 50
    return-void
.end method

.method public constructor <init>(I[Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # I
    .param p2, "message"    # [Ljava/lang/String;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/ftpserver/ftplet/DefaultFtpReply;->sentTime:J

    .line 58
    iput p1, p0, Lorg/apache/ftpserver/ftplet/DefaultFtpReply;->code:I

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 62
    aget-object v2, p2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 61
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 65
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ftpserver/ftplet/DefaultFtpReply;->message:Ljava/lang/String;

    .line 66
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/apache/ftpserver/ftplet/DefaultFtpReply;->sentTime:J

    .line 67
    return-void
.end method

.method private isDigit(C)Z
    .locals 1
    .param p1, "c"    # C

    .line 92
    const/16 v0, 0x30

    if-lt p1, v0, :cond_0

    const/16 v0, 0x39

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 73
    iget v0, p0, Lorg/apache/ftpserver/ftplet/DefaultFtpReply;->code:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lorg/apache/ftpserver/ftplet/DefaultFtpReply;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getSentTime()J
    .locals 2

    .line 84
    iget-wide v0, p0, Lorg/apache/ftpserver/ftplet/DefaultFtpReply;->sentTime:J

    return-wide v0
.end method

.method public isPositive()Z
    .locals 2

    .line 88
    iget v0, p0, Lorg/apache/ftpserver/ftplet/DefaultFtpReply;->code:I

    const/16 v1, 0x190

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 102
    invoke-virtual {p0}, Lorg/apache/ftpserver/ftplet/DefaultFtpReply;->getCode()I

    move-result v0

    .line 103
    .local v0, "code":I
    invoke-virtual {p0}, Lorg/apache/ftpserver/ftplet/DefaultFtpReply;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 104
    .local v1, "notNullMessage":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 105
    const-string v1, ""

    .line 108
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string v3, "\r"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 114
    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_1

    .line 115
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v6

    invoke-virtual {v1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 118
    :cond_1
    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 121
    .local v3, "lines":[Ljava/lang/String;
    array-length v4, v3

    const-string v7, "\r\n"

    const-string v8, " "

    if-ne v4, v6, :cond_2

    .line 122
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 128
    :cond_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 129
    const-string v4, "-"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v9, v3

    if-ge v4, v9, :cond_5

    .line 132
    aget-object v9, v3, v4

    .line 134
    .local v9, "line":Ljava/lang/String;
    add-int/lit8 v10, v4, 0x1

    array-length v11, v3

    if-ne v10, v11, :cond_3

    .line 135
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    :cond_3
    if-lez v4, :cond_4

    add-int/lit8 v10, v4, 0x1

    array-length v11, v3

    if-ge v10, v11, :cond_4

    .line 143
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x2

    if-le v10, v11, :cond_4

    .line 144
    invoke-virtual {v9, v5}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-direct {p0, v10}, Lorg/apache/ftpserver/ftplet/DefaultFtpReply;->isDigit(C)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 145
    invoke-virtual {v9, v6}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-direct {p0, v10}, Lorg/apache/ftpserver/ftplet/DefaultFtpReply;->isDigit(C)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 146
    invoke-virtual {v9, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-direct {p0, v10}, Lorg/apache/ftpserver/ftplet/DefaultFtpReply;->isDigit(C)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 148
    const-string v10, "  "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    :cond_4
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .end local v9    # "line":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 156
    .end local v4    # "i":I
    :cond_5
    :goto_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
