.class public Lorg/apache/commons/net/nntp/NNTPClient;
.super Lorg/apache/commons/net/nntp/NNTP;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/net/nntp/NNTP;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private ai2ap(Lorg/apache/commons/net/nntp/ArticleInfo;Lorg/apache/commons/net/nntp/ArticlePointer;)V
    .registers 5

    .line 1
    if-eqz p2, :cond_b

    .line 2
    .line 3
    iget-object v0, p1, Lorg/apache/commons/net/nntp/ArticleInfo;->articleId:Ljava/lang/String;

    .line 4
    .line 5
    iput-object v0, p2, Lorg/apache/commons/net/nntp/ArticlePointer;->articleId:Ljava/lang/String;

    .line 6
    .line 7
    iget-wide v0, p1, Lorg/apache/commons/net/nntp/ArticleInfo;->articleNumber:J

    .line 8
    .line 9
    long-to-int p1, v0

    .line 10
    iput p1, p2, Lorg/apache/commons/net/nntp/ArticlePointer;->articleNumber:I

    .line 11
    .line 12
    :cond_b
    return-void
.end method

.method private ap2ai(Lorg/apache/commons/net/nntp/ArticlePointer;)Lorg/apache/commons/net/nntp/ArticleInfo;
    .registers 2

    .line 1
    if-nez p1, :cond_4

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    :cond_4
    new-instance p1, Lorg/apache/commons/net/nntp/ArticleInfo;

    .line 6
    .line 7
    invoke-direct {p1}, Lorg/apache/commons/net/nntp/ArticleInfo;-><init>()V

    .line 8
    .line 9
    .line 10
    return-object p1
.end method

.method public static parseArticleEntry(Ljava/lang/String;)Lorg/apache/commons/net/nntp/Article;
    .registers 4

    .line 1
    new-instance v0, Lorg/apache/commons/net/nntp/Article;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/apache/commons/net/nntp/Article;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lorg/apache/commons/net/nntp/Article;->setSubject(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const-string v1, "\t"

    .line 10
    .line 11
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    array-length v1, p0

    .line 16
    const/4 v2, 0x6

    .line 17
    if-le v1, v2, :cond_3a

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    :try_start_13
    aget-object v1, p0, v1

    .line 21
    .line 22
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 23
    .line 24
    .line 25
    move-result-wide v1

    .line 26
    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/net/nntp/Article;->setArticleNumber(J)V

    .line 27
    .line 28
    .line 29
    const/4 v1, 0x1

    .line 30
    aget-object v1, p0, v1

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lorg/apache/commons/net/nntp/Article;->setSubject(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const/4 v1, 0x2

    .line 36
    aget-object v1, p0, v1

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lorg/apache/commons/net/nntp/Article;->setFrom(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const/4 v1, 0x3

    .line 42
    aget-object v1, p0, v1

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Lorg/apache/commons/net/nntp/Article;->setDate(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const/4 v1, 0x4

    .line 48
    aget-object v1, p0, v1

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Lorg/apache/commons/net/nntp/Article;->setArticleId(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const/4 v1, 0x5

    .line 54
    aget-object p0, p0, v1

    .line 55
    .line 56
    invoke-virtual {v0, p0}, Lorg/apache/commons/net/nntp/Article;->addReference(Ljava/lang/String;)V
    :try_end_3a
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_3a} :catch_3a

    .line 57
    .line 58
    .line 59
    :catch_3a
    :cond_3a
    return-object v0
.end method

.method private parseArticlePointer(Ljava/lang/String;Lorg/apache/commons/net/nntp/ArticleInfo;)V
    .registers 6

    .line 1
    const-string v0, " "

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    array-length v1, v0

    .line 8
    const/4 v2, 0x3

    .line 9
    if-lt v1, v2, :cond_19

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    :try_start_b
    aget-object v1, v0, v1

    .line 13
    .line 14
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 15
    .line 16
    .line 17
    move-result-wide v1

    .line 18
    iput-wide v1, p2, Lorg/apache/commons/net/nntp/ArticleInfo;->articleNumber:J

    .line 19
    .line 20
    const/4 v1, 0x2

    .line 21
    aget-object v0, v0, v1

    .line 22
    .line 23
    iput-object v0, p2, Lorg/apache/commons/net/nntp/ArticleInfo;->articleId:Ljava/lang/String;
    :try_end_18
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_18} :catch_19

    .line 24
    .line 25
    return-void

    .line 26
    :catch_19
    :cond_19
    new-instance p2, Lorg/apache/commons/net/MalformedServerReplyException;

    .line 27
    .line 28
    const-string v0, "Could not parse article pointer.\nServer reply: "

    .line 29
    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-direct {p2, p1}, Lorg/apache/commons/net/MalformedServerReplyException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p2
.end method

.method private static parseGroupReply(Ljava/lang/String;Lorg/apache/commons/net/nntp/NewsgroupInfo;)V
    .registers 5

    .line 1
    const-string v0, " "

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    array-length v1, v0

    .line 8
    const/4 v2, 0x5

    .line 9
    if-lt v1, v2, :cond_33

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    :try_start_b
    aget-object v1, v0, v1

    .line 13
    .line 14
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 15
    .line 16
    .line 17
    move-result-wide v1

    .line 18
    invoke-virtual {p1, v1, v2}, Lorg/apache/commons/net/nntp/NewsgroupInfo;->setArticleCount(J)V

    .line 19
    .line 20
    .line 21
    const/4 v1, 0x2

    .line 22
    aget-object v1, v0, v1

    .line 23
    .line 24
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 25
    .line 26
    .line 27
    move-result-wide v1

    .line 28
    invoke-virtual {p1, v1, v2}, Lorg/apache/commons/net/nntp/NewsgroupInfo;->setFirstArticle(J)V

    .line 29
    .line 30
    .line 31
    const/4 v1, 0x3

    .line 32
    aget-object v1, v0, v1

    .line 33
    .line 34
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 35
    .line 36
    .line 37
    move-result-wide v1

    .line 38
    invoke-virtual {p1, v1, v2}, Lorg/apache/commons/net/nntp/NewsgroupInfo;->setLastArticle(J)V

    .line 39
    .line 40
    .line 41
    const/4 v1, 0x4

    .line 42
    aget-object v0, v0, v1

    .line 43
    .line 44
    invoke-virtual {p1, v0}, Lorg/apache/commons/net/nntp/NewsgroupInfo;->setNewsgroup(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const/4 v0, 0x0

    .line 48
    invoke-virtual {p1, v0}, Lorg/apache/commons/net/nntp/NewsgroupInfo;->setPostingPermission(I)V
    :try_end_32
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_32} :catch_33

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :catch_33
    :cond_33
    new-instance p1, Lorg/apache/commons/net/MalformedServerReplyException;

    .line 53
    .line 54
    const-string v0, "Could not parse newsgroup info.\nServer reply: "

    .line 55
    .line 56
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-direct {p1, p0}, Lorg/apache/commons/net/MalformedServerReplyException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw p1
.end method

.method public static parseNewsgroupListEntry(Ljava/lang/String;)Lorg/apache/commons/net/nntp/NewsgroupInfo;
    .registers 12

    .line 1
    const-string v0, " "

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    array-length v0, p0

    .line 8
    const/4 v1, 0x4

    .line 9
    if-ge v0, v1, :cond_b

    .line 10
    .line 11
    goto :goto_6e

    .line 12
    :cond_b
    new-instance v0, Lorg/apache/commons/net/nntp/NewsgroupInfo;

    .line 13
    .line 14
    invoke-direct {v0}, Lorg/apache/commons/net/nntp/NewsgroupInfo;-><init>()V

    .line 15
    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    aget-object v2, p0, v1

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Lorg/apache/commons/net/nntp/NewsgroupInfo;->setNewsgroup(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    :try_start_17
    aget-object v3, p0, v2

    .line 25
    .line 26
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 27
    .line 28
    .line 29
    move-result-wide v3

    .line 30
    const/4 v5, 0x2

    .line 31
    aget-object v6, p0, v5

    .line 32
    .line 33
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 34
    .line 35
    .line 36
    move-result-wide v6

    .line 37
    invoke-virtual {v0, v6, v7}, Lorg/apache/commons/net/nntp/NewsgroupInfo;->setFirstArticle(J)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v3, v4}, Lorg/apache/commons/net/nntp/NewsgroupInfo;->setLastArticle(J)V

    .line 41
    .line 42
    .line 43
    const-wide/16 v8, 0x0

    .line 44
    .line 45
    cmp-long v10, v6, v8

    .line 46
    .line 47
    if-nez v10, :cond_38

    .line 48
    .line 49
    cmp-long v10, v3, v8

    .line 50
    .line 51
    if-nez v10, :cond_38

    .line 52
    .line 53
    invoke-virtual {v0, v8, v9}, Lorg/apache/commons/net/nntp/NewsgroupInfo;->setArticleCount(J)V

    .line 54
    .line 55
    .line 56
    goto :goto_3f

    .line 57
    :cond_38
    sub-long/2addr v3, v6

    .line 58
    const-wide/16 v6, 0x1

    .line 59
    .line 60
    add-long/2addr v3, v6

    .line 61
    invoke-virtual {v0, v3, v4}, Lorg/apache/commons/net/nntp/NewsgroupInfo;->setArticleCount(J)V
    :try_end_3f
    .catch Ljava/lang/NumberFormatException; {:try_start_17 .. :try_end_3f} :catch_6e

    .line 62
    .line 63
    .line 64
    :goto_3f
    const/4 v3, 0x3

    .line 65
    aget-object p0, p0, v3

    .line 66
    .line 67
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 68
    .line 69
    .line 70
    move-result p0

    .line 71
    const/16 v4, 0x4d

    .line 72
    .line 73
    if-eq p0, v4, :cond_6a

    .line 74
    .line 75
    const/16 v4, 0x4e

    .line 76
    .line 77
    if-eq p0, v4, :cond_66

    .line 78
    .line 79
    const/16 v4, 0x59

    .line 80
    .line 81
    if-eq p0, v4, :cond_62

    .line 82
    .line 83
    const/16 v4, 0x79

    .line 84
    .line 85
    if-eq p0, v4, :cond_62

    .line 86
    .line 87
    const/16 v4, 0x6d

    .line 88
    .line 89
    if-eq p0, v4, :cond_6a

    .line 90
    .line 91
    const/16 v2, 0x6e

    .line 92
    .line 93
    if-eq p0, v2, :cond_66

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Lorg/apache/commons/net/nntp/NewsgroupInfo;->setPostingPermission(I)V

    .line 96
    .line 97
    .line 98
    return-object v0

    .line 99
    :cond_62
    invoke-virtual {v0, v5}, Lorg/apache/commons/net/nntp/NewsgroupInfo;->setPostingPermission(I)V

    .line 100
    .line 101
    .line 102
    return-object v0

    .line 103
    :cond_66
    invoke-virtual {v0, v3}, Lorg/apache/commons/net/nntp/NewsgroupInfo;->setPostingPermission(I)V

    .line 104
    .line 105
    .line 106
    return-object v0

    .line 107
    :cond_6a
    invoke-virtual {v0, v2}, Lorg/apache/commons/net/nntp/NewsgroupInfo;->setPostingPermission(I)V

    .line 108
    .line 109
    .line 110
    return-object v0

    .line 111
    :catch_6e
    :goto_6e
    const/4 p0, 0x0

    .line 112
    return-object p0
.end method

.method private readNewsgroupListing()[Lorg/apache/commons/net/nntp/NewsgroupInfo;
    .registers 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    const/16 v1, 0x800

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Lorg/apache/commons/net/io/DotTerminatedMessageReader;

    .line 9
    .line 10
    iget-object v2, p0, Lorg/apache/commons/net/nntp/NNTP;->_reader_:Ljava/io/BufferedReader;

    .line 11
    .line 12
    invoke-direct {v1, v2}, Lorg/apache/commons/net/io/DotTerminatedMessageReader;-><init>(Ljava/io/Reader;)V

    .line 13
    .line 14
    .line 15
    :goto_e
    :try_start_e
    invoke-virtual {v1}, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->readLine()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    if-eqz v2, :cond_26

    .line 20
    .line 21
    invoke-static {v2}, Lorg/apache/commons/net/nntp/NNTPClient;->parseNewsgroupListEntry(Ljava/lang/String;)Lorg/apache/commons/net/nntp/NewsgroupInfo;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    if-eqz v3, :cond_20

    .line 26
    .line 27
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    goto :goto_e

    .line 31
    :catchall_1e
    move-exception v0

    .line 32
    goto :goto_3c

    .line 33
    :cond_20
    new-instance v0, Lorg/apache/commons/net/MalformedServerReplyException;

    .line 34
    .line 35
    invoke-direct {v0, v2}, Lorg/apache/commons/net/MalformedServerReplyException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw v0
    :try_end_26
    .catchall {:try_start_e .. :try_end_26} :catchall_1e

    .line 39
    :cond_26
    invoke-virtual {v1}, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->close()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    const/4 v2, 0x1

    .line 47
    if-ge v1, v2, :cond_33

    .line 48
    .line 49
    sget-object v0, Lorg/apache/commons/net/nntp/NewsgroupInfo;->EMPTY_ARRAY:[Lorg/apache/commons/net/nntp/NewsgroupInfo;

    .line 50
    .line 51
    return-object v0

    .line 52
    :cond_33
    sget-object v1, Lorg/apache/commons/net/nntp/NewsgroupInfo;->EMPTY_ARRAY:[Lorg/apache/commons/net/nntp/NewsgroupInfo;

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    check-cast v0, [Lorg/apache/commons/net/nntp/NewsgroupInfo;

    .line 59
    .line 60
    return-object v0

    .line 61
    :goto_3c
    :try_start_3c
    invoke-virtual {v1}, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->close()V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_40

    .line 62
    .line 63
    .line 64
    goto :goto_44

    .line 65
    :catchall_40
    move-exception v1

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 67
    .line 68
    .line 69
    :goto_44
    throw v0
.end method

.method private retrieve(IJLorg/apache/commons/net/nntp/ArticleInfo;)Ljava/io/BufferedReader;
    .registers 5

    .line 43
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/nntp/NNTP;->sendCommand(ILjava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lorg/apache/commons/net/nntp/NNTPReply;->isPositiveCompletion(I)Z

    move-result p1

    if-nez p1, :cond_10

    const/4 p1, 0x0

    return-object p1

    :cond_10
    if-eqz p4, :cond_19

    .line 44
    invoke-virtual {p0}, Lorg/apache/commons/net/nntp/NNTP;->getReplyString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p4}, Lorg/apache/commons/net/nntp/NNTPClient;->parseArticlePointer(Ljava/lang/String;Lorg/apache/commons/net/nntp/ArticleInfo;)V

    .line 45
    :cond_19
    new-instance p1, Lorg/apache/commons/net/io/DotTerminatedMessageReader;

    iget-object p2, p0, Lorg/apache/commons/net/nntp/NNTP;->_reader_:Ljava/io/BufferedReader;

    invoke-direct {p1, p2}, Lorg/apache/commons/net/io/DotTerminatedMessageReader;-><init>(Ljava/io/Reader;)V

    return-object p1
.end method

.method private retrieve(ILjava/lang/String;Lorg/apache/commons/net/nntp/ArticleInfo;)Ljava/io/BufferedReader;
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_e

    .line 3
    .line 4
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/nntp/NNTP;->sendCommand(ILjava/lang/String;)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    invoke-static {p1}, Lorg/apache/commons/net/nntp/NNTPReply;->isPositiveCompletion(I)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-nez p1, :cond_19

    .line 13
    .line 14
    return-object v0

    .line 15
    :cond_e
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/nntp/NNTP;->sendCommand(I)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    invoke-static {p1}, Lorg/apache/commons/net/nntp/NNTPReply;->isPositiveCompletion(I)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-nez p1, :cond_19

    .line 24
    .line 25
    return-object v0

    .line 26
    :cond_19
    if-eqz p3, :cond_22

    .line 27
    .line 28
    invoke-virtual {p0}, Lorg/apache/commons/net/nntp/NNTP;->getReplyString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-direct {p0, p1, p3}, Lorg/apache/commons/net/nntp/NNTPClient;->parseArticlePointer(Ljava/lang/String;Lorg/apache/commons/net/nntp/ArticleInfo;)V

    .line 33
    .line 34
    .line 35
    :cond_22
    new-instance p1, Lorg/apache/commons/net/io/DotTerminatedMessageReader;

    .line 36
    .line 37
    iget-object p2, p0, Lorg/apache/commons/net/nntp/NNTP;->_reader_:Ljava/io/BufferedReader;

    .line 38
    .line 39
    invoke-direct {p1, p2}, Lorg/apache/commons/net/io/DotTerminatedMessageReader;-><init>(Ljava/io/Reader;)V

    .line 40
    .line 41
    .line 42
    return-object p1
.end method

.method private retrieveArticleInfo(Ljava/lang/String;)Ljava/io/BufferedReader;
    .registers 3

    .line 29
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/nntp/NNTP;->xover(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lorg/apache/commons/net/nntp/NNTPReply;->isPositiveCompletion(I)Z

    move-result p1

    if-nez p1, :cond_c

    const/4 p1, 0x0

    return-object p1

    .line 30
    :cond_c
    new-instance p1, Lorg/apache/commons/net/io/DotTerminatedMessageReader;

    iget-object v0, p0, Lorg/apache/commons/net/nntp/NNTP;->_reader_:Ljava/io/BufferedReader;

    invoke-direct {p1, v0}, Lorg/apache/commons/net/io/DotTerminatedMessageReader;-><init>(Ljava/io/Reader;)V

    return-object p1
.end method

.method private retrieveHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/io/BufferedReader;
    .registers 3

    .line 29
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/nntp/NNTP;->xhdr(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lorg/apache/commons/net/nntp/NNTPReply;->isPositiveCompletion(I)Z

    move-result p1

    if-nez p1, :cond_c

    const/4 p1, 0x0

    return-object p1

    .line 30
    :cond_c
    new-instance p1, Lorg/apache/commons/net/io/DotTerminatedMessageReader;

    iget-object p2, p0, Lorg/apache/commons/net/nntp/NNTP;->_reader_:Ljava/io/BufferedReader;

    invoke-direct {p1, p2}, Lorg/apache/commons/net/io/DotTerminatedMessageReader;-><init>(Ljava/io/Reader;)V

    return-object p1
.end method


# virtual methods
.method public authenticate(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/nntp/NNTP;->authinfoUser(Ljava/lang/String;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/16 v0, 0x17d

    .line 6
    .line 7
    if-ne p1, v0, :cond_14

    .line 8
    .line 9
    invoke-virtual {p0, p2}, Lorg/apache/commons/net/nntp/NNTP;->authinfoPass(Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    const/16 p2, 0x119

    .line 14
    .line 15
    if-ne p1, p2, :cond_14

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    iput-boolean p1, p0, Lorg/apache/commons/net/nntp/NNTP;->_isAllowedToPost:Z

    .line 19
    .line 20
    return p1

    .line 21
    :cond_14
    const/4 p1, 0x0

    .line 22
    return p1
.end method

.method public completePendingCommand()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/net/nntp/NNTP;->getReply()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Lorg/apache/commons/net/nntp/NNTPReply;->isPositiveCompletion(I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public forwardArticle(Ljava/lang/String;)Ljava/io/Writer;
    .registers 3

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/nntp/NNTP;->ihave(Ljava/lang/String;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-static {p1}, Lorg/apache/commons/net/nntp/NNTPReply;->isPositiveIntermediate(I)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-nez p1, :cond_c

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    return-object p1

    .line 13
    :cond_c
    new-instance p1, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;

    .line 14
    .line 15
    iget-object v0, p0, Lorg/apache/commons/net/nntp/NNTP;->_writer_:Ljava/io/BufferedWriter;

    .line 16
    .line 17
    invoke-direct {p1, v0}, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;-><init>(Ljava/io/Writer;)V

    .line 18
    .line 19
    .line 20
    return-object p1
.end method

.method public iterateArticleInfo(JJ)Ljava/lang/Iterable;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/lang/Iterable<",
            "Lorg/apache/commons/net/nntp/Article;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/net/nntp/NNTPClient;->retrieveArticleInfo(JJ)Ljava/io/BufferedReader;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_12

    .line 6
    .line 7
    new-instance p2, Lorg/apache/commons/net/nntp/ArticleIterator;

    .line 8
    .line 9
    new-instance p3, Lorg/apache/commons/net/nntp/ReplyIterator;

    .line 10
    .line 11
    const/4 p4, 0x0

    .line 12
    invoke-direct {p3, p1, p4}, Lorg/apache/commons/net/nntp/ReplyIterator;-><init>(Ljava/io/BufferedReader;Z)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p2, p3}, Lorg/apache/commons/net/nntp/ArticleIterator;-><init>(Ljava/lang/Iterable;)V

    .line 16
    .line 17
    .line 18
    return-object p2

    .line 19
    :cond_12
    const-string p1, "XOVER command failed: "

    .line 20
    .line 21
    invoke-virtual {p0}, Lorg/apache/commons/net/nntp/NNTP;->getReplyString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-static {p2, p1}, Lai/onnxruntime/b;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const/4 p1, 0x0

    .line 29
    return-object p1
.end method

.method public iterateNewNews(Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;)Ljava/lang/Iterable;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;",
            ")",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->getNewsgroups()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v1

    .line 5
    invoke-virtual {p1}, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->getDate()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {p1}, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->getTime()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    invoke-virtual {p1}, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->isGMT()Z

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    invoke-virtual {p1}, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->getDistributions()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    move-object v0, p0

    .line 22
    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/net/nntp/NNTP;->newnews(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    invoke-static {p1}, Lorg/apache/commons/net/nntp/NNTPReply;->isPositiveCompletion(I)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_27

    .line 31
    .line 32
    new-instance p1, Lorg/apache/commons/net/nntp/ReplyIterator;

    .line 33
    .line 34
    iget-object v1, v0, Lorg/apache/commons/net/nntp/NNTP;->_reader_:Ljava/io/BufferedReader;

    .line 35
    .line 36
    invoke-direct {p1, v1}, Lorg/apache/commons/net/nntp/ReplyIterator;-><init>(Ljava/io/BufferedReader;)V

    .line 37
    .line 38
    .line 39
    return-object p1

    .line 40
    :cond_27
    const-string p1, "NEWNEWS command failed: "

    .line 41
    .line 42
    invoke-virtual {p0}, Lorg/apache/commons/net/nntp/NNTP;->getReplyString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-static {v1, p1}, Lai/onnxruntime/b;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const/4 p1, 0x0

    .line 50
    return-object p1
.end method

.method public iterateNewNewsgroupListing(Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;)Ljava/lang/Iterable;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;",
            ")",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->getDate()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->getTime()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p1}, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->isGMT()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-virtual {p1}, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->getDistributions()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p0, v0, v1, v2, p1}, Lorg/apache/commons/net/nntp/NNTP;->newgroups(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    invoke-static {p1}, Lorg/apache/commons/net/nntp/NNTPReply;->isPositiveCompletion(I)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_22

    .line 26
    .line 27
    new-instance p1, Lorg/apache/commons/net/nntp/ReplyIterator;

    .line 28
    .line 29
    iget-object v0, p0, Lorg/apache/commons/net/nntp/NNTP;->_reader_:Ljava/io/BufferedReader;

    .line 30
    .line 31
    invoke-direct {p1, v0}, Lorg/apache/commons/net/nntp/ReplyIterator;-><init>(Ljava/io/BufferedReader;)V

    .line 32
    .line 33
    .line 34
    return-object p1

    .line 35
    :cond_22
    const-string p1, "NEWGROUPS command failed: "

    .line 36
    .line 37
    invoke-virtual {p0}, Lorg/apache/commons/net/nntp/NNTP;->getReplyString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-static {v0, p1}, Lai/onnxruntime/b;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const/4 p1, 0x0

    .line 45
    return-object p1
.end method

.method public iterateNewNewsgroups(Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;)Ljava/lang/Iterable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;",
            ")",
            "Ljava/lang/Iterable<",
            "Lorg/apache/commons/net/nntp/NewsgroupInfo;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/commons/net/nntp/NewsgroupIterator;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/nntp/NNTPClient;->iterateNewNewsgroupListing(Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;)Ljava/lang/Iterable;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {v0, p1}, Lorg/apache/commons/net/nntp/NewsgroupIterator;-><init>(Ljava/lang/Iterable;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public iterateNewsgroupListing()Ljava/lang/Iterable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 44
    invoke-virtual {p0}, Lorg/apache/commons/net/nntp/NNTP;->list()I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/nntp/NNTPReply;->isPositiveCompletion(I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 45
    new-instance v0, Lorg/apache/commons/net/nntp/ReplyIterator;

    iget-object v1, p0, Lorg/apache/commons/net/nntp/NNTP;->_reader_:Ljava/io/BufferedReader;

    invoke-direct {v0, v1}, Lorg/apache/commons/net/nntp/ReplyIterator;-><init>(Ljava/io/BufferedReader;)V

    return-object v0

    .line 46
    :cond_12
    const-string v0, "LIST command failed: "

    invoke-virtual {p0}, Lorg/apache/commons/net/nntp/NNTP;->getReplyString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lai/onnxruntime/b;->w(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public iterateNewsgroupListing(Ljava/lang/String;)Ljava/lang/Iterable;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/nntp/NNTP;->listActive(Ljava/lang/String;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Lorg/apache/commons/net/nntp/NNTPReply;->isPositiveCompletion(I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_12

    .line 10
    .line 11
    new-instance p1, Lorg/apache/commons/net/nntp/ReplyIterator;

    .line 12
    .line 13
    iget-object v0, p0, Lorg/apache/commons/net/nntp/NNTP;->_reader_:Ljava/io/BufferedReader;

    .line 14
    .line 15
    invoke-direct {p1, v0}, Lorg/apache/commons/net/nntp/ReplyIterator;-><init>(Ljava/io/BufferedReader;)V

    .line 16
    .line 17
    .line 18
    return-object p1

    .line 19
    :cond_12
    new-instance v0, Ljava/io/IOException;

    .line 20
    .line 21
    const-string v1, "LIST ACTIVE "

    .line 22
    .line 23
    const-string v2, " command failed: "

    .line 24
    .line 25
    invoke-static {v1, p1, v2}, Lai/onnxruntime/a;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p0}, Lorg/apache/commons/net/nntp/NNTP;->getReplyString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw v0
.end method

.method public iterateNewsgroups()Ljava/lang/Iterable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lorg/apache/commons/net/nntp/NewsgroupInfo;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/commons/net/nntp/NewsgroupIterator;

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/apache/commons/net/nntp/NNTPClient;->iterateNewsgroupListing()Ljava/lang/Iterable;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Lorg/apache/commons/net/nntp/NewsgroupIterator;-><init>(Ljava/lang/Iterable;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public iterateNewsgroups(Ljava/lang/String;)Ljava/lang/Iterable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Iterable<",
            "Lorg/apache/commons/net/nntp/NewsgroupInfo;",
            ">;"
        }
    .end annotation

    .line 11
    new-instance v0, Lorg/apache/commons/net/nntp/NewsgroupIterator;

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/nntp/NNTPClient;->iterateNewsgroupListing(Ljava/lang/String;)Ljava/lang/Iterable;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/commons/net/nntp/NewsgroupIterator;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public listHelp()Ljava/lang/String;
    .registers 4

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/net/nntp/NNTP;->help()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Lorg/apache/commons/net/nntp/NNTPReply;->isInformational(I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_c

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0

    .line 13
    :cond_c
    new-instance v0, Ljava/io/StringWriter;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 16
    .line 17
    .line 18
    :try_start_11
    new-instance v1, Lorg/apache/commons/net/io/DotTerminatedMessageReader;

    .line 19
    .line 20
    iget-object v2, p0, Lorg/apache/commons/net/nntp/NNTP;->_reader_:Ljava/io/BufferedReader;

    .line 21
    .line 22
    invoke-direct {v1, v2}, Lorg/apache/commons/net/io/DotTerminatedMessageReader;-><init>(Ljava/io/Reader;)V
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_26

    .line 23
    .line 24
    .line 25
    :try_start_18
    invoke-static {v1, v0}, Lorg/apache/commons/io/IOUtils;->copyLarge(Ljava/io/Reader;Ljava/io/Writer;)J

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_28

    .line 32
    :try_start_1f
    invoke-virtual {v1}, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->close()V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_26

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/io/StringWriter;->close()V

    .line 36
    .line 37
    .line 38
    return-object v2

    .line 39
    :catchall_26
    move-exception v1

    .line 40
    goto :goto_32

    .line 41
    :catchall_28
    move-exception v2

    .line 42
    :try_start_29
    invoke-virtual {v1}, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->close()V
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_2d

    .line 43
    .line 44
    .line 45
    goto :goto_31

    .line 46
    :catchall_2d
    move-exception v1

    .line 47
    :try_start_2e
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 48
    .line 49
    .line 50
    :goto_31
    throw v2
    :try_end_32
    .catchall {:try_start_2e .. :try_end_32} :catchall_26

    .line 51
    :goto_32
    :try_start_32
    invoke-virtual {v0}, Ljava/io/StringWriter;->close()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_36

    .line 52
    .line 53
    .line 54
    goto :goto_3a

    .line 55
    :catchall_36
    move-exception v0

    .line 56
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 57
    .line 58
    .line 59
    :goto_3a
    throw v1
.end method

.method public listNewNews(Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;)[Ljava/lang/String;
    .registers 9

    .line 1
    invoke-virtual {p1}, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->getNewsgroups()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v2

    .line 5
    invoke-virtual {p1}, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->getDate()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v3

    .line 9
    invoke-virtual {p1}, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->getTime()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    invoke-virtual {p1}, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->isGMT()Z

    .line 14
    .line 15
    .line 16
    move-result v5

    .line 17
    invoke-virtual {p1}, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->getDistributions()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v6

    .line 21
    move-object v1, p0

    .line 22
    invoke-virtual/range {v1 .. v6}, Lorg/apache/commons/net/nntp/NNTP;->newnews(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    invoke-static {p1}, Lorg/apache/commons/net/nntp/NNTPReply;->isPositiveCompletion(I)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-nez p1, :cond_21

    .line 31
    .line 32
    const/4 p1, 0x0

    .line 33
    return-object p1

    .line 34
    :cond_21
    new-instance p1, Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .line 38
    .line 39
    new-instance p1, Lorg/apache/commons/net/io/DotTerminatedMessageReader;

    .line 40
    .line 41
    iget-object v0, v1, Lorg/apache/commons/net/nntp/NNTP;->_reader_:Ljava/io/BufferedReader;

    .line 42
    .line 43
    invoke-direct {p1, v0}, Lorg/apache/commons/net/io/DotTerminatedMessageReader;-><init>(Ljava/io/Reader;)V

    .line 44
    .line 45
    .line 46
    :try_start_2d
    invoke-static {p1}, Lorg/apache/commons/io/IOUtils;->readLines(Ljava/io/Reader;)Ljava/util/List;

    .line 47
    .line 48
    .line 49
    move-result-object v0
    :try_end_31
    .catchall {:try_start_2d .. :try_end_31} :catchall_3d

    .line 50
    invoke-virtual {p1}, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->close()V

    .line 51
    .line 52
    .line 53
    sget-object p1, Lorg/apache/commons/net/util/NetConstants;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 54
    .line 55
    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    check-cast p1, [Ljava/lang/String;

    .line 60
    .line 61
    return-object p1

    .line 62
    :catchall_3d
    move-exception v0

    .line 63
    move-object v2, v0

    .line 64
    :try_start_3f
    invoke-virtual {p1}, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->close()V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_43

    .line 65
    .line 66
    .line 67
    goto :goto_48

    .line 68
    :catchall_43
    move-exception v0

    .line 69
    move-object p1, v0

    .line 70
    invoke-virtual {v2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 71
    .line 72
    .line 73
    :goto_48
    throw v2
.end method

.method public listNewNewsgroups(Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;)[Lorg/apache/commons/net/nntp/NewsgroupInfo;
    .registers 5

    .line 1
    invoke-virtual {p1}, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->getDate()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->getTime()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p1}, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->isGMT()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-virtual {p1}, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->getDistributions()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p0, v0, v1, v2, p1}, Lorg/apache/commons/net/nntp/NNTP;->newgroups(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    invoke-static {p1}, Lorg/apache/commons/net/nntp/NNTPReply;->isPositiveCompletion(I)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-nez p1, :cond_1c

    .line 26
    .line 27
    const/4 p1, 0x0

    .line 28
    return-object p1

    .line 29
    :cond_1c
    invoke-direct {p0}, Lorg/apache/commons/net/nntp/NNTPClient;->readNewsgroupListing()[Lorg/apache/commons/net/nntp/NewsgroupInfo;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    return-object p1
.end method

.method public listNewsgroups()[Lorg/apache/commons/net/nntp/NewsgroupInfo;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/net/nntp/NNTP;->list()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Lorg/apache/commons/net/nntp/NNTPReply;->isPositiveCompletion(I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_c

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0

    .line 13
    :cond_c
    invoke-direct {p0}, Lorg/apache/commons/net/nntp/NNTPClient;->readNewsgroupListing()[Lorg/apache/commons/net/nntp/NewsgroupInfo;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method

.method public listNewsgroups(Ljava/lang/String;)[Lorg/apache/commons/net/nntp/NewsgroupInfo;
    .registers 2

    .line 18
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/nntp/NNTP;->listActive(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lorg/apache/commons/net/nntp/NNTPReply;->isPositiveCompletion(I)Z

    move-result p1

    if-nez p1, :cond_c

    const/4 p1, 0x0

    return-object p1

    .line 19
    :cond_c
    invoke-direct {p0}, Lorg/apache/commons/net/nntp/NNTPClient;->readNewsgroupListing()[Lorg/apache/commons/net/nntp/NewsgroupInfo;

    move-result-object p1

    return-object p1
.end method

.method public listOverviewFmt()[Ljava/lang/String;
    .registers 4

    .line 1
    const-string v0, "LIST"

    .line 2
    .line 3
    const-string v1, "OVERVIEW.FMT"

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/net/nntp/NNTP;->sendCommand(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-static {v0}, Lorg/apache/commons/net/nntp/NNTPReply;->isPositiveCompletion(I)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_10

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    return-object v0

    .line 17
    :cond_10
    new-instance v0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;

    .line 18
    .line 19
    iget-object v1, p0, Lorg/apache/commons/net/nntp/NNTP;->_reader_:Ljava/io/BufferedReader;

    .line 20
    .line 21
    invoke-direct {v0, v1}, Lorg/apache/commons/net/io/DotTerminatedMessageReader;-><init>(Ljava/io/Reader;)V

    .line 22
    .line 23
    .line 24
    :try_start_17
    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->readLines(Ljava/io/Reader;)Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    sget-object v2, Lorg/apache/commons/net/util/NetConstants;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 29
    .line 30
    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, [Ljava/lang/String;
    :try_end_23
    .catchall {:try_start_17 .. :try_end_23} :catchall_27

    .line 35
    .line 36
    invoke-virtual {v0}, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->close()V

    .line 37
    .line 38
    .line 39
    return-object v1

    .line 40
    :catchall_27
    move-exception v1

    .line 41
    :try_start_28
    invoke-virtual {v0}, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->close()V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_2c

    .line 42
    .line 43
    .line 44
    goto :goto_30

    .line 45
    :catchall_2c
    move-exception v0

    .line 46
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 47
    .line 48
    .line 49
    :goto_30
    throw v1
.end method

.method public logout()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/net/nntp/NNTP;->quit()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Lorg/apache/commons/net/nntp/NNTPReply;->isPositiveCompletion(I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public postArticle()Ljava/io/Writer;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/net/nntp/NNTP;->post()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Lorg/apache/commons/net/nntp/NNTPReply;->isPositiveIntermediate(I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_c

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0

    .line 13
    :cond_c
    new-instance v0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;

    .line 14
    .line 15
    iget-object v1, p0, Lorg/apache/commons/net/nntp/NNTP;->_writer_:Ljava/io/BufferedWriter;

    .line 16
    .line 17
    invoke-direct {v0, v1}, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;-><init>(Ljava/io/Writer;)V

    .line 18
    .line 19
    .line 20
    return-object v0
.end method

.method public retrieveArticle(J)Ljava/io/BufferedReader;
    .registers 4

    const/4 v0, 0x0

    .line 16
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/net/nntp/NNTPClient;->retrieveArticle(JLorg/apache/commons/net/nntp/ArticleInfo;)Ljava/io/BufferedReader;

    move-result-object p1

    return-object p1
.end method

.method public retrieveArticle(JLorg/apache/commons/net/nntp/ArticleInfo;)Ljava/io/BufferedReader;
    .registers 5

    const/4 v0, 0x0

    .line 17
    invoke-direct {p0, v0, p1, p2, p3}, Lorg/apache/commons/net/nntp/NNTPClient;->retrieve(IJLorg/apache/commons/net/nntp/ArticleInfo;)Ljava/io/BufferedReader;

    move-result-object p1

    return-object p1
.end method

.method public retrieveArticle(Ljava/lang/String;Lorg/apache/commons/net/nntp/ArticleInfo;)Ljava/io/BufferedReader;
    .registers 4

    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/net/nntp/NNTPClient;->retrieve(ILjava/lang/String;Lorg/apache/commons/net/nntp/ArticleInfo;)Ljava/io/BufferedReader;

    move-result-object p1

    return-object p1
.end method

.method public retrieveArticle()Ljava/io/Reader;
    .registers 2

    const/4 v0, 0x0

    .line 15
    invoke-virtual {p0, v0}, Lorg/apache/commons/net/nntp/NNTPClient;->retrieveArticle(Ljava/lang/String;)Ljava/io/Reader;

    move-result-object v0

    return-object v0
.end method

.method public retrieveArticle(I)Ljava/io/Reader;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    int-to-long v0, p1

    .line 14
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/net/nntp/NNTPClient;->retrieveArticle(J)Ljava/io/BufferedReader;

    move-result-object p1

    return-object p1
.end method

.method public retrieveArticle(ILorg/apache/commons/net/nntp/ArticlePointer;)Ljava/io/Reader;
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lorg/apache/commons/net/nntp/NNTPClient;->ap2ai(Lorg/apache/commons/net/nntp/ArticlePointer;)Lorg/apache/commons/net/nntp/ArticleInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    int-to-long v1, p1

    .line 6
    invoke-virtual {p0, v1, v2, v0}, Lorg/apache/commons/net/nntp/NNTPClient;->retrieveArticle(JLorg/apache/commons/net/nntp/ArticleInfo;)Ljava/io/BufferedReader;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-direct {p0, v0, p2}, Lorg/apache/commons/net/nntp/NNTPClient;->ai2ap(Lorg/apache/commons/net/nntp/ArticleInfo;Lorg/apache/commons/net/nntp/ArticlePointer;)V

    .line 11
    .line 12
    .line 13
    return-object p1
.end method

.method public retrieveArticle(Ljava/lang/String;)Ljava/io/Reader;
    .registers 3

    const/4 v0, 0x0

    .line 18
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/net/nntp/NNTPClient;->retrieveArticle(Ljava/lang/String;Lorg/apache/commons/net/nntp/ArticleInfo;)Ljava/io/BufferedReader;

    move-result-object p1

    return-object p1
.end method

.method public retrieveArticle(Ljava/lang/String;Lorg/apache/commons/net/nntp/ArticlePointer;)Ljava/io/Reader;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 20
    invoke-direct {p0, p2}, Lorg/apache/commons/net/nntp/NNTPClient;->ap2ai(Lorg/apache/commons/net/nntp/ArticlePointer;)Lorg/apache/commons/net/nntp/ArticleInfo;

    move-result-object v0

    .line 21
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/net/nntp/NNTPClient;->retrieveArticle(Ljava/lang/String;Lorg/apache/commons/net/nntp/ArticleInfo;)Ljava/io/BufferedReader;

    move-result-object p1

    .line 22
    invoke-direct {p0, v0, p2}, Lorg/apache/commons/net/nntp/NNTPClient;->ai2ap(Lorg/apache/commons/net/nntp/ArticleInfo;Lorg/apache/commons/net/nntp/ArticlePointer;)V

    return-object p1
.end method

.method public retrieveArticleBody(J)Ljava/io/BufferedReader;
    .registers 4

    const/4 v0, 0x0

    .line 16
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/net/nntp/NNTPClient;->retrieveArticleBody(JLorg/apache/commons/net/nntp/ArticleInfo;)Ljava/io/BufferedReader;

    move-result-object p1

    return-object p1
.end method

.method public retrieveArticleBody(JLorg/apache/commons/net/nntp/ArticleInfo;)Ljava/io/BufferedReader;
    .registers 5

    const/4 v0, 0x1

    .line 17
    invoke-direct {p0, v0, p1, p2, p3}, Lorg/apache/commons/net/nntp/NNTPClient;->retrieve(IJLorg/apache/commons/net/nntp/ArticleInfo;)Ljava/io/BufferedReader;

    move-result-object p1

    return-object p1
.end method

.method public retrieveArticleBody(Ljava/lang/String;Lorg/apache/commons/net/nntp/ArticleInfo;)Ljava/io/BufferedReader;
    .registers 4

    const/4 v0, 0x1

    .line 19
    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/net/nntp/NNTPClient;->retrieve(ILjava/lang/String;Lorg/apache/commons/net/nntp/ArticleInfo;)Ljava/io/BufferedReader;

    move-result-object p1

    return-object p1
.end method

.method public retrieveArticleBody()Ljava/io/Reader;
    .registers 2

    const/4 v0, 0x0

    .line 15
    invoke-virtual {p0, v0}, Lorg/apache/commons/net/nntp/NNTPClient;->retrieveArticleBody(Ljava/lang/String;)Ljava/io/Reader;

    move-result-object v0

    return-object v0
.end method

.method public retrieveArticleBody(I)Ljava/io/Reader;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    int-to-long v0, p1

    .line 14
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/net/nntp/NNTPClient;->retrieveArticleBody(J)Ljava/io/BufferedReader;

    move-result-object p1

    return-object p1
.end method

.method public retrieveArticleBody(ILorg/apache/commons/net/nntp/ArticlePointer;)Ljava/io/Reader;
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lorg/apache/commons/net/nntp/NNTPClient;->ap2ai(Lorg/apache/commons/net/nntp/ArticlePointer;)Lorg/apache/commons/net/nntp/ArticleInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    int-to-long v1, p1

    .line 6
    invoke-virtual {p0, v1, v2, v0}, Lorg/apache/commons/net/nntp/NNTPClient;->retrieveArticleBody(JLorg/apache/commons/net/nntp/ArticleInfo;)Ljava/io/BufferedReader;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-direct {p0, v0, p2}, Lorg/apache/commons/net/nntp/NNTPClient;->ai2ap(Lorg/apache/commons/net/nntp/ArticleInfo;Lorg/apache/commons/net/nntp/ArticlePointer;)V

    .line 11
    .line 12
    .line 13
    return-object p1
.end method

.method public retrieveArticleBody(Ljava/lang/String;)Ljava/io/Reader;
    .registers 3

    const/4 v0, 0x0

    .line 18
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/net/nntp/NNTPClient;->retrieveArticleBody(Ljava/lang/String;Lorg/apache/commons/net/nntp/ArticleInfo;)Ljava/io/BufferedReader;

    move-result-object p1

    return-object p1
.end method

.method public retrieveArticleBody(Ljava/lang/String;Lorg/apache/commons/net/nntp/ArticlePointer;)Ljava/io/Reader;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 20
    invoke-direct {p0, p2}, Lorg/apache/commons/net/nntp/NNTPClient;->ap2ai(Lorg/apache/commons/net/nntp/ArticlePointer;)Lorg/apache/commons/net/nntp/ArticleInfo;

    move-result-object v0

    .line 21
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/net/nntp/NNTPClient;->retrieveArticleBody(Ljava/lang/String;Lorg/apache/commons/net/nntp/ArticleInfo;)Ljava/io/BufferedReader;

    move-result-object p1

    .line 22
    invoke-direct {p0, v0, p2}, Lorg/apache/commons/net/nntp/NNTPClient;->ai2ap(Lorg/apache/commons/net/nntp/ArticleInfo;Lorg/apache/commons/net/nntp/ArticlePointer;)V

    return-object p1
.end method

.method public retrieveArticleHeader(J)Ljava/io/BufferedReader;
    .registers 4

    const/4 v0, 0x0

    .line 16
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/net/nntp/NNTPClient;->retrieveArticleHeader(JLorg/apache/commons/net/nntp/ArticleInfo;)Ljava/io/BufferedReader;

    move-result-object p1

    return-object p1
.end method

.method public retrieveArticleHeader(JLorg/apache/commons/net/nntp/ArticleInfo;)Ljava/io/BufferedReader;
    .registers 5

    const/4 v0, 0x3

    .line 17
    invoke-direct {p0, v0, p1, p2, p3}, Lorg/apache/commons/net/nntp/NNTPClient;->retrieve(IJLorg/apache/commons/net/nntp/ArticleInfo;)Ljava/io/BufferedReader;

    move-result-object p1

    return-object p1
.end method

.method public retrieveArticleHeader(Ljava/lang/String;Lorg/apache/commons/net/nntp/ArticleInfo;)Ljava/io/BufferedReader;
    .registers 4

    const/4 v0, 0x3

    .line 19
    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/net/nntp/NNTPClient;->retrieve(ILjava/lang/String;Lorg/apache/commons/net/nntp/ArticleInfo;)Ljava/io/BufferedReader;

    move-result-object p1

    return-object p1
.end method

.method public retrieveArticleHeader()Ljava/io/Reader;
    .registers 2

    const/4 v0, 0x0

    .line 15
    invoke-virtual {p0, v0}, Lorg/apache/commons/net/nntp/NNTPClient;->retrieveArticleHeader(Ljava/lang/String;)Ljava/io/Reader;

    move-result-object v0

    return-object v0
.end method

.method public retrieveArticleHeader(I)Ljava/io/Reader;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    int-to-long v0, p1

    .line 14
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/net/nntp/NNTPClient;->retrieveArticleHeader(J)Ljava/io/BufferedReader;

    move-result-object p1

    return-object p1
.end method

.method public retrieveArticleHeader(ILorg/apache/commons/net/nntp/ArticlePointer;)Ljava/io/Reader;
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lorg/apache/commons/net/nntp/NNTPClient;->ap2ai(Lorg/apache/commons/net/nntp/ArticlePointer;)Lorg/apache/commons/net/nntp/ArticleInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    int-to-long v1, p1

    .line 6
    invoke-virtual {p0, v1, v2, v0}, Lorg/apache/commons/net/nntp/NNTPClient;->retrieveArticleHeader(JLorg/apache/commons/net/nntp/ArticleInfo;)Ljava/io/BufferedReader;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-direct {p0, v0, p2}, Lorg/apache/commons/net/nntp/NNTPClient;->ai2ap(Lorg/apache/commons/net/nntp/ArticleInfo;Lorg/apache/commons/net/nntp/ArticlePointer;)V

    .line 11
    .line 12
    .line 13
    return-object p1
.end method

.method public retrieveArticleHeader(Ljava/lang/String;)Ljava/io/Reader;
    .registers 3

    const/4 v0, 0x0

    .line 18
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/net/nntp/NNTPClient;->retrieveArticleHeader(Ljava/lang/String;Lorg/apache/commons/net/nntp/ArticleInfo;)Ljava/io/BufferedReader;

    move-result-object p1

    return-object p1
.end method

.method public retrieveArticleHeader(Ljava/lang/String;Lorg/apache/commons/net/nntp/ArticlePointer;)Ljava/io/Reader;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 20
    invoke-direct {p0, p2}, Lorg/apache/commons/net/nntp/NNTPClient;->ap2ai(Lorg/apache/commons/net/nntp/ArticlePointer;)Lorg/apache/commons/net/nntp/ArticleInfo;

    move-result-object v0

    .line 21
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/net/nntp/NNTPClient;->retrieveArticleHeader(Ljava/lang/String;Lorg/apache/commons/net/nntp/ArticleInfo;)Ljava/io/BufferedReader;

    move-result-object p1

    .line 22
    invoke-direct {p0, v0, p2}, Lorg/apache/commons/net/nntp/NNTPClient;->ai2ap(Lorg/apache/commons/net/nntp/ArticleInfo;Lorg/apache/commons/net/nntp/ArticlePointer;)V

    return-object p1
.end method

.method public retrieveArticleInfo(J)Ljava/io/BufferedReader;
    .registers 3

    .line 27
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/net/nntp/NNTPClient;->retrieveArticleInfo(Ljava/lang/String;)Ljava/io/BufferedReader;

    move-result-object p1

    return-object p1
.end method

.method public retrieveArticleInfo(JJ)Ljava/io/BufferedReader;
    .registers 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    const-string p1, "-"

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-direct {p0, p1}, Lorg/apache/commons/net/nntp/NNTPClient;->retrieveArticleInfo(Ljava/lang/String;)Ljava/io/BufferedReader;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    return-object p1
.end method

.method public retrieveArticleInfo(I)Ljava/io/Reader;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    int-to-long v0, p1

    .line 28
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/net/nntp/NNTPClient;->retrieveArticleInfo(J)Ljava/io/BufferedReader;

    move-result-object p1

    return-object p1
.end method

.method public retrieveArticleInfo(II)Ljava/io/Reader;
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    int-to-long v0, p1

    int-to-long p1, p2

    .line 26
    invoke-virtual {p0, v0, v1, p1, p2}, Lorg/apache/commons/net/nntp/NNTPClient;->retrieveArticleInfo(JJ)Ljava/io/BufferedReader;

    move-result-object p1

    return-object p1
.end method

.method public retrieveHeader(Ljava/lang/String;J)Ljava/io/BufferedReader;
    .registers 4

    .line 27
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/net/nntp/NNTPClient;->retrieveHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/io/BufferedReader;

    move-result-object p1

    return-object p1
.end method

.method public retrieveHeader(Ljava/lang/String;JJ)Ljava/io/BufferedReader;
    .registers 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    const-string p2, "-"

    .line 10
    .line 11
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/net/nntp/NNTPClient;->retrieveHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/io/BufferedReader;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    return-object p1
.end method

.method public retrieveHeader(Ljava/lang/String;I)Ljava/io/Reader;
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    int-to-long v0, p2

    .line 28
    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/net/nntp/NNTPClient;->retrieveHeader(Ljava/lang/String;J)Ljava/io/BufferedReader;

    move-result-object p1

    return-object p1
.end method

.method public retrieveHeader(Ljava/lang/String;II)Ljava/io/Reader;
    .registers 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    int-to-long v2, p2

    int-to-long v4, p3

    move-object v0, p0

    move-object v1, p1

    .line 26
    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/net/nntp/NNTPClient;->retrieveHeader(Ljava/lang/String;JJ)Ljava/io/BufferedReader;

    move-result-object p1

    return-object p1
.end method

.method public selectArticle(I)Z
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    int-to-long v0, p1

    .line 40
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/net/nntp/NNTPClient;->selectArticle(J)Z

    move-result p1

    return p1
.end method

.method public selectArticle(ILorg/apache/commons/net/nntp/ArticlePointer;)Z
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 41
    invoke-direct {p0, p2}, Lorg/apache/commons/net/nntp/NNTPClient;->ap2ai(Lorg/apache/commons/net/nntp/ArticlePointer;)Lorg/apache/commons/net/nntp/ArticleInfo;

    move-result-object v0

    int-to-long v1, p1

    .line 42
    invoke-virtual {p0, v1, v2, v0}, Lorg/apache/commons/net/nntp/NNTPClient;->selectArticle(JLorg/apache/commons/net/nntp/ArticleInfo;)Z

    move-result p1

    .line 43
    invoke-direct {p0, v0, p2}, Lorg/apache/commons/net/nntp/NNTPClient;->ai2ap(Lorg/apache/commons/net/nntp/ArticleInfo;Lorg/apache/commons/net/nntp/ArticlePointer;)V

    return p1
.end method

.method public selectArticle(J)Z
    .registers 4

    const/4 v0, 0x0

    .line 44
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/net/nntp/NNTPClient;->selectArticle(JLorg/apache/commons/net/nntp/ArticleInfo;)Z

    move-result p1

    return p1
.end method

.method public selectArticle(JLorg/apache/commons/net/nntp/ArticleInfo;)Z
    .registers 4

    .line 45
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/nntp/NNTP;->stat(J)I

    move-result p1

    invoke-static {p1}, Lorg/apache/commons/net/nntp/NNTPReply;->isPositiveCompletion(I)Z

    move-result p1

    if-nez p1, :cond_c

    const/4 p1, 0x0

    return p1

    :cond_c
    if-eqz p3, :cond_15

    .line 46
    invoke-virtual {p0}, Lorg/apache/commons/net/nntp/NNTP;->getReplyString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lorg/apache/commons/net/nntp/NNTPClient;->parseArticlePointer(Ljava/lang/String;Lorg/apache/commons/net/nntp/ArticleInfo;)V

    :cond_15
    const/4 p1, 0x1

    return p1
.end method

.method public selectArticle(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    .line 47
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/net/nntp/NNTPClient;->selectArticle(Ljava/lang/String;Lorg/apache/commons/net/nntp/ArticleInfo;)Z

    move-result p1

    return p1
.end method

.method public selectArticle(Ljava/lang/String;Lorg/apache/commons/net/nntp/ArticleInfo;)Z
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_e

    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/nntp/NNTP;->stat(Ljava/lang/String;)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    invoke-static {p1}, Lorg/apache/commons/net/nntp/NNTPReply;->isPositiveCompletion(I)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-nez p1, :cond_19

    .line 13
    .line 14
    return v0

    .line 15
    :cond_e
    invoke-virtual {p0}, Lorg/apache/commons/net/nntp/NNTP;->stat()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    invoke-static {p1}, Lorg/apache/commons/net/nntp/NNTPReply;->isPositiveCompletion(I)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-nez p1, :cond_19

    .line 24
    .line 25
    return v0

    .line 26
    :cond_19
    if-eqz p2, :cond_22

    .line 27
    .line 28
    invoke-virtual {p0}, Lorg/apache/commons/net/nntp/NNTP;->getReplyString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/net/nntp/NNTPClient;->parseArticlePointer(Ljava/lang/String;Lorg/apache/commons/net/nntp/ArticleInfo;)V

    .line 33
    .line 34
    .line 35
    :cond_22
    const/4 p1, 0x1

    .line 36
    return p1
.end method

.method public selectArticle(Ljava/lang/String;Lorg/apache/commons/net/nntp/ArticlePointer;)Z
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 49
    invoke-direct {p0, p2}, Lorg/apache/commons/net/nntp/NNTPClient;->ap2ai(Lorg/apache/commons/net/nntp/ArticlePointer;)Lorg/apache/commons/net/nntp/ArticleInfo;

    move-result-object v0

    .line 50
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/net/nntp/NNTPClient;->selectArticle(Ljava/lang/String;Lorg/apache/commons/net/nntp/ArticleInfo;)Z

    move-result p1

    .line 51
    invoke-direct {p0, v0, p2}, Lorg/apache/commons/net/nntp/NNTPClient;->ai2ap(Lorg/apache/commons/net/nntp/ArticleInfo;Lorg/apache/commons/net/nntp/ArticlePointer;)V

    return p1
.end method

.method public selectArticle(Lorg/apache/commons/net/nntp/ArticleInfo;)Z
    .registers 3

    const/4 v0, 0x0

    .line 48
    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/nntp/NNTPClient;->selectArticle(Ljava/lang/String;Lorg/apache/commons/net/nntp/ArticleInfo;)Z

    move-result p1

    return p1
.end method

.method public selectArticle(Lorg/apache/commons/net/nntp/ArticlePointer;)Z
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 37
    invoke-direct {p0, p1}, Lorg/apache/commons/net/nntp/NNTPClient;->ap2ai(Lorg/apache/commons/net/nntp/ArticlePointer;)Lorg/apache/commons/net/nntp/ArticleInfo;

    move-result-object v0

    .line 38
    invoke-virtual {p0, v0}, Lorg/apache/commons/net/nntp/NNTPClient;->selectArticle(Lorg/apache/commons/net/nntp/ArticleInfo;)Z

    move-result v1

    .line 39
    invoke-direct {p0, v0, p1}, Lorg/apache/commons/net/nntp/NNTPClient;->ai2ap(Lorg/apache/commons/net/nntp/ArticleInfo;Lorg/apache/commons/net/nntp/ArticlePointer;)V

    return v1
.end method

.method public selectNewsgroup(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    .line 24
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/net/nntp/NNTPClient;->selectNewsgroup(Ljava/lang/String;Lorg/apache/commons/net/nntp/NewsgroupInfo;)Z

    move-result p1

    return p1
.end method

.method public selectNewsgroup(Ljava/lang/String;Lorg/apache/commons/net/nntp/NewsgroupInfo;)Z
    .registers 3

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/nntp/NNTP;->group(Ljava/lang/String;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-static {p1}, Lorg/apache/commons/net/nntp/NNTPReply;->isPositiveCompletion(I)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-nez p1, :cond_c

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    return p1

    .line 13
    :cond_c
    if-eqz p2, :cond_15

    .line 14
    .line 15
    invoke-virtual {p0}, Lorg/apache/commons/net/nntp/NNTP;->getReplyString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-static {p1, p2}, Lorg/apache/commons/net/nntp/NNTPClient;->parseGroupReply(Ljava/lang/String;Lorg/apache/commons/net/nntp/NewsgroupInfo;)V

    .line 20
    .line 21
    .line 22
    :cond_15
    const/4 p1, 0x1

    .line 23
    return p1
.end method

.method public selectNextArticle()Z
    .registers 2

    const/4 v0, 0x0

    .line 24
    invoke-virtual {p0, v0}, Lorg/apache/commons/net/nntp/NNTPClient;->selectNextArticle(Lorg/apache/commons/net/nntp/ArticleInfo;)Z

    move-result v0

    return v0
.end method

.method public selectNextArticle(Lorg/apache/commons/net/nntp/ArticleInfo;)Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/net/nntp/NNTP;->next()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Lorg/apache/commons/net/nntp/NNTPReply;->isPositiveCompletion(I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_c

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    return p1

    .line 13
    :cond_c
    if-eqz p1, :cond_15

    .line 14
    .line 15
    invoke-virtual {p0}, Lorg/apache/commons/net/nntp/NNTP;->getReplyString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-direct {p0, v0, p1}, Lorg/apache/commons/net/nntp/NNTPClient;->parseArticlePointer(Ljava/lang/String;Lorg/apache/commons/net/nntp/ArticleInfo;)V

    .line 20
    .line 21
    .line 22
    :cond_15
    const/4 p1, 0x1

    .line 23
    return p1
.end method

.method public selectNextArticle(Lorg/apache/commons/net/nntp/ArticlePointer;)Z
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 25
    invoke-direct {p0, p1}, Lorg/apache/commons/net/nntp/NNTPClient;->ap2ai(Lorg/apache/commons/net/nntp/ArticlePointer;)Lorg/apache/commons/net/nntp/ArticleInfo;

    move-result-object v0

    .line 26
    invoke-virtual {p0, v0}, Lorg/apache/commons/net/nntp/NNTPClient;->selectNextArticle(Lorg/apache/commons/net/nntp/ArticleInfo;)Z

    move-result v1

    .line 27
    invoke-direct {p0, v0, p1}, Lorg/apache/commons/net/nntp/NNTPClient;->ai2ap(Lorg/apache/commons/net/nntp/ArticleInfo;Lorg/apache/commons/net/nntp/ArticlePointer;)V

    return v1
.end method

.method public selectPreviousArticle()Z
    .registers 2

    const/4 v0, 0x0

    .line 24
    invoke-virtual {p0, v0}, Lorg/apache/commons/net/nntp/NNTPClient;->selectPreviousArticle(Lorg/apache/commons/net/nntp/ArticleInfo;)Z

    move-result v0

    return v0
.end method

.method public selectPreviousArticle(Lorg/apache/commons/net/nntp/ArticleInfo;)Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/net/nntp/NNTP;->last()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Lorg/apache/commons/net/nntp/NNTPReply;->isPositiveCompletion(I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_c

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    return p1

    .line 13
    :cond_c
    if-eqz p1, :cond_15

    .line 14
    .line 15
    invoke-virtual {p0}, Lorg/apache/commons/net/nntp/NNTP;->getReplyString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-direct {p0, v0, p1}, Lorg/apache/commons/net/nntp/NNTPClient;->parseArticlePointer(Ljava/lang/String;Lorg/apache/commons/net/nntp/ArticleInfo;)V

    .line 20
    .line 21
    .line 22
    :cond_15
    const/4 p1, 0x1

    .line 23
    return p1
.end method

.method public selectPreviousArticle(Lorg/apache/commons/net/nntp/ArticlePointer;)Z
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 25
    invoke-direct {p0, p1}, Lorg/apache/commons/net/nntp/NNTPClient;->ap2ai(Lorg/apache/commons/net/nntp/ArticlePointer;)Lorg/apache/commons/net/nntp/ArticleInfo;

    move-result-object v0

    .line 26
    invoke-virtual {p0, v0}, Lorg/apache/commons/net/nntp/NNTPClient;->selectPreviousArticle(Lorg/apache/commons/net/nntp/ArticleInfo;)Z

    move-result v1

    .line 27
    invoke-direct {p0, v0, p1}, Lorg/apache/commons/net/nntp/NNTPClient;->ai2ap(Lorg/apache/commons/net/nntp/ArticleInfo;Lorg/apache/commons/net/nntp/ArticlePointer;)V

    return v1
.end method
