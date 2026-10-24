.class public Lorg/apache/ftpserver/command/impl/listing/ListArgumentParser;
.super Ljava/lang/Object;
.source "ListArgumentParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static containsPattern(Ljava/lang/String;)Z
    .locals 2
    .param p0, "file"    # Ljava/lang/String;

    .line 107
    const/16 v0, 0x2a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-gt v0, v1, :cond_1

    const/16 v0, 0x3f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gt v0, v1, :cond_1

    const/16 v0, 0x5b

    .line 108
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 107
    :goto_1
    return v0
.end method

.method public static parse(Ljava/lang/String;)Lorg/apache/ftpserver/command/impl/listing/ListArgument;
    .locals 12
    .param p0, "argument"    # Ljava/lang/String;

    .line 42
    const-string v0, "./"

    .line 43
    .local v0, "file":Ljava/lang/String;
    const-string v1, ""

    .line 44
    .local v1, "options":Ljava/lang/String;
    const-string v2, "*"

    .line 47
    .local v2, "pattern":Ljava/lang/String;
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p0, :cond_6

    .line 48
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 49
    new-instance v5, Ljava/lang/StringBuilder;

    const/4 v6, 0x4

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 50
    .local v5, "optionsSb":Ljava/lang/StringBuilder;
    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x10

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 51
    .local v6, "fileSb":Ljava/lang/StringBuilder;
    new-instance v7, Ljava/util/StringTokenizer;

    const-string v8, " "

    invoke-direct {v7, p0, v8, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 52
    .local v7, "st":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 53
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    .line 55
    .local v9, "token":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-eqz v10, :cond_0

    .line 57
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 58
    :cond_0
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 60
    goto :goto_0

    .line 61
    :cond_1
    invoke-virtual {v9, v3}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x2d

    if-ne v10, v11, :cond_2

    .line 64
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    if-le v10, v4, :cond_3

    .line 65
    invoke-virtual {v9, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 69
    :cond_2
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .end local v9    # "token":Ljava/lang/String;
    :cond_3
    :goto_1
    goto :goto_0

    .line 73
    :cond_4
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-eqz v8, :cond_5

    .line 74
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 76
    :cond_5
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 79
    .end local v5    # "optionsSb":Ljava/lang/StringBuilder;
    .end local v6    # "fileSb":Ljava/lang/StringBuilder;
    .end local v7    # "st":Ljava/util/StringTokenizer;
    :cond_6
    const/16 v5, 0x2f

    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    .line 80
    .local v5, "slashIndex":I
    const/4 v6, -0x1

    if-ne v5, v6, :cond_7

    .line 81
    invoke-static {v0}, Lorg/apache/ftpserver/command/impl/listing/ListArgumentParser;->containsPattern(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 82
    move-object v2, v0

    .line 83
    const-string v0, "./"

    goto :goto_2

    .line 85
    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v4

    if-eq v5, v6, :cond_a

    .line 86
    add-int/lit8 v4, v5, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 88
    .local v4, "after":Ljava/lang/String;
    invoke-static {v4}, Lorg/apache/ftpserver/command/impl/listing/ListArgumentParser;->containsPattern(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 89
    add-int/lit8 v6, v5, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 90
    add-int/lit8 v6, v5, 0x1

    invoke-virtual {v0, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 93
    :cond_8
    invoke-static {v0}, Lorg/apache/ftpserver/command/impl/listing/ListArgumentParser;->containsPattern(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    goto :goto_2

    .line 94
    :cond_9
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v6, "Directory path can not contain regular expression"

    invoke-direct {v3, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 99
    .end local v4    # "after":Ljava/lang/String;
    :cond_a
    :goto_2
    const-string v3, "*"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 100
    :cond_b
    const/4 v2, 0x0

    .line 103
    :cond_c
    new-instance v3, Lorg/apache/ftpserver/command/impl/listing/ListArgument;

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    invoke-direct {v3, v0, v2, v4}, Lorg/apache/ftpserver/command/impl/listing/ListArgument;-><init>(Ljava/lang/String;Ljava/lang/String;[C)V

    return-object v3
.end method
