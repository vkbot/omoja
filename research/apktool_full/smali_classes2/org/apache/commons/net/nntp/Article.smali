.class public Lorg/apache/commons/net/nntp/Article;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lorg/apache/commons/net/nntp/Threadable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/net/nntp/Threadable<",
        "Lorg/apache/commons/net/nntp/Article;",
        ">;"
    }
.end annotation


# instance fields
.field private articleId:Ljava/lang/String;

.field private articleNumber:J

.field private date:Ljava/lang/String;

.field private from:Ljava/lang/String;

.field private isReply:Z

.field public kid:Lorg/apache/commons/net/nntp/Article;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public next:Lorg/apache/commons/net/nntp/Article;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private references:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private simplifiedSubject:Ljava/lang/String;

.field private subject:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, -0x1

    .line 5
    .line 6
    iput-wide v0, p0, Lorg/apache/commons/net/nntp/Article;->articleNumber:J

    .line 7
    .line 8
    return-void
.end method

.method private flushSubjectCache()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/apache/commons/net/nntp/Article;->simplifiedSubject:Ljava/lang/String;

    .line 3
    .line 4
    return-void
.end method

.method public static printThread(Lorg/apache/commons/net/nntp/Article;)V
    .locals 2

    const/4 v0, 0x0

    .line 71
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {p0, v0, v1}, Lorg/apache/commons/net/nntp/Article;->printThread(Lorg/apache/commons/net/nntp/Article;ILjava/io/PrintStream;)V

    return-void
.end method

.method public static printThread(Lorg/apache/commons/net/nntp/Article;I)V
    .locals 1

    .line 70
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {p0, p1, v0}, Lorg/apache/commons/net/nntp/Article;->printThread(Lorg/apache/commons/net/nntp/Article;ILjava/io/PrintStream;)V

    return-void
.end method

.method public static printThread(Lorg/apache/commons/net/nntp/Article;ILjava/io/PrintStream;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    if-ge v0, p1, :cond_0

    .line 3
    .line 4
    const-string v1, "==>"

    .line 5
    .line 6
    invoke-virtual {p2, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    add-int/lit8 v0, v0, 0x1

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lorg/apache/commons/net/nntp/Article;->getSubject()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v1, "\t"

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lorg/apache/commons/net/nntp/Article;->getFrom()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lorg/apache/commons/net/nntp/Article;->getArticleId()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-object p2, p0, Lorg/apache/commons/net/nntp/Article;->kid:Lorg/apache/commons/net/nntp/Article;

    .line 54
    .line 55
    if-eqz p2, :cond_1

    .line 56
    .line 57
    add-int/lit8 v0, p1, 0x1

    .line 58
    .line 59
    invoke-static {p2, v0}, Lorg/apache/commons/net/nntp/Article;->printThread(Lorg/apache/commons/net/nntp/Article;I)V

    .line 60
    .line 61
    .line 62
    :cond_1
    iget-object p0, p0, Lorg/apache/commons/net/nntp/Article;->next:Lorg/apache/commons/net/nntp/Article;

    .line 63
    .line 64
    if-eqz p0, :cond_2

    .line 65
    .line 66
    invoke-static {p0, p1}, Lorg/apache/commons/net/nntp/Article;->printThread(Lorg/apache/commons/net/nntp/Article;I)V

    .line 67
    .line 68
    .line 69
    :cond_2
    return-void
.end method

.method public static printThread(Lorg/apache/commons/net/nntp/Article;Ljava/io/PrintStream;)V
    .locals 1

    const/4 v0, 0x0

    .line 72
    invoke-static {p0, v0, p1}, Lorg/apache/commons/net/nntp/Article;->printThread(Lorg/apache/commons/net/nntp/Article;ILjava/io/PrintStream;)V

    return-void
.end method

.method private simplifySubject()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/net/nntp/Article;->getSubject()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    move v3, v2

    .line 11
    move v4, v3

    .line 12
    :goto_0
    if-nez v3, :cond_b

    .line 13
    .line 14
    :goto_1
    const/16 v3, 0x20

    .line 15
    .line 16
    if-ge v4, v1, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    .line 19
    .line 20
    .line 21
    move-result v5

    .line 22
    if-ne v5, v3, :cond_0

    .line 23
    .line 24
    add-int/lit8 v4, v4, 0x1

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_0
    add-int/lit8 v5, v1, -0x2

    .line 28
    .line 29
    if-ge v4, v5, :cond_7

    .line 30
    .line 31
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    .line 32
    .line 33
    .line 34
    move-result v6

    .line 35
    const/16 v7, 0x72

    .line 36
    .line 37
    if-eq v6, v7, :cond_1

    .line 38
    .line 39
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    .line 40
    .line 41
    .line 42
    move-result v6

    .line 43
    const/16 v7, 0x52

    .line 44
    .line 45
    if-ne v6, v7, :cond_7

    .line 46
    .line 47
    :cond_1
    add-int/lit8 v6, v4, 0x1

    .line 48
    .line 49
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    .line 50
    .line 51
    .line 52
    move-result v7

    .line 53
    const/16 v8, 0x65

    .line 54
    .line 55
    if-eq v7, v8, :cond_2

    .line 56
    .line 57
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    .line 58
    .line 59
    .line 60
    move-result v6

    .line 61
    const/16 v7, 0x45

    .line 62
    .line 63
    if-ne v6, v7, :cond_7

    .line 64
    .line 65
    :cond_2
    add-int/lit8 v6, v4, 0x2

    .line 66
    .line 67
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    .line 68
    .line 69
    .line 70
    move-result v7

    .line 71
    const/16 v8, 0x3a

    .line 72
    .line 73
    if-ne v7, v8, :cond_3

    .line 74
    .line 75
    add-int/lit8 v4, v4, 0x3

    .line 76
    .line 77
    :goto_2
    move v5, v2

    .line 78
    goto :goto_4

    .line 79
    :cond_3
    if-ge v4, v5, :cond_7

    .line 80
    .line 81
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    .line 82
    .line 83
    .line 84
    move-result v5

    .line 85
    const/16 v7, 0x5b

    .line 86
    .line 87
    if-eq v5, v7, :cond_4

    .line 88
    .line 89
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    .line 90
    .line 91
    .line 92
    move-result v5

    .line 93
    const/16 v6, 0x28

    .line 94
    .line 95
    if-ne v5, v6, :cond_7

    .line 96
    .line 97
    :cond_4
    add-int/lit8 v5, v4, 0x3

    .line 98
    .line 99
    :goto_3
    if-ge v5, v1, :cond_5

    .line 100
    .line 101
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    .line 102
    .line 103
    .line 104
    move-result v6

    .line 105
    const/16 v7, 0x30

    .line 106
    .line 107
    if-lt v6, v7, :cond_5

    .line 108
    .line 109
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    .line 110
    .line 111
    .line 112
    move-result v6

    .line 113
    const/16 v7, 0x39

    .line 114
    .line 115
    if-gt v6, v7, :cond_5

    .line 116
    .line 117
    add-int/lit8 v5, v5, 0x1

    .line 118
    .line 119
    goto :goto_3

    .line 120
    :cond_5
    add-int/lit8 v6, v1, -0x1

    .line 121
    .line 122
    if-ge v5, v6, :cond_7

    .line 123
    .line 124
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    .line 125
    .line 126
    .line 127
    move-result v6

    .line 128
    const/16 v7, 0x5d

    .line 129
    .line 130
    if-eq v6, v7, :cond_6

    .line 131
    .line 132
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    .line 133
    .line 134
    .line 135
    move-result v6

    .line 136
    const/16 v7, 0x29

    .line 137
    .line 138
    if-ne v6, v7, :cond_7

    .line 139
    .line 140
    :cond_6
    add-int/lit8 v6, v5, 0x1

    .line 141
    .line 142
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    .line 143
    .line 144
    .line 145
    move-result v6

    .line 146
    if-ne v6, v8, :cond_7

    .line 147
    .line 148
    add-int/lit8 v5, v5, 0x2

    .line 149
    .line 150
    move v4, v5

    .line 151
    goto :goto_2

    .line 152
    :cond_7
    const/4 v5, 0x1

    .line 153
    :goto_4
    const-string v6, "(no subject)"

    .line 154
    .line 155
    iget-object v7, p0, Lorg/apache/commons/net/nntp/Article;->simplifiedSubject:Ljava/lang/String;

    .line 156
    .line 157
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    move-result v6

    .line 161
    if-eqz v6, :cond_8

    .line 162
    .line 163
    const-string v6, ""

    .line 164
    .line 165
    iput-object v6, p0, Lorg/apache/commons/net/nntp/Article;->simplifiedSubject:Ljava/lang/String;

    .line 166
    .line 167
    :cond_8
    move v6, v1

    .line 168
    :goto_5
    if-le v6, v4, :cond_9

    .line 169
    .line 170
    add-int/lit8 v7, v6, -0x1

    .line 171
    .line 172
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    .line 173
    .line 174
    .line 175
    move-result v7

    .line 176
    if-ge v7, v3, :cond_9

    .line 177
    .line 178
    add-int/lit8 v6, v6, -0x1

    .line 179
    .line 180
    goto :goto_5

    .line 181
    :cond_9
    if-nez v4, :cond_a

    .line 182
    .line 183
    if-ne v6, v1, :cond_a

    .line 184
    .line 185
    iput-object v0, p0, Lorg/apache/commons/net/nntp/Article;->simplifiedSubject:Ljava/lang/String;

    .line 186
    .line 187
    goto :goto_6

    .line 188
    :cond_a
    invoke-virtual {v0, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v3

    .line 192
    iput-object v3, p0, Lorg/apache/commons/net/nntp/Article;->simplifiedSubject:Ljava/lang/String;

    .line 193
    .line 194
    :goto_6
    move v3, v5

    .line 195
    goto/16 :goto_0

    .line 196
    .line 197
    :cond_b
    return-void
.end method


# virtual methods
.method public addHeaderField(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    return-void
.end method

.method public addReference(Ljava/lang/String;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/net/nntp/Article;->references:Ljava/util/ArrayList;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    new-instance v0, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lorg/apache/commons/net/nntp/Article;->references:Ljava/util/ArrayList;

    .line 20
    .line 21
    :cond_1
    const/4 v0, 0x1

    .line 22
    iput-boolean v0, p0, Lorg/apache/commons/net/nntp/Article;->isReply:Z

    .line 23
    .line 24
    iget-object v0, p0, Lorg/apache/commons/net/nntp/Article;->references:Ljava/util/ArrayList;

    .line 25
    .line 26
    const-string v1, " "

    .line 27
    .line 28
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    :cond_2
    :goto_0
    return-void
.end method

.method public getArticleId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/nntp/Article;->articleId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getArticleNumber()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/net/nntp/Article;->articleNumber:J

    .line 2
    .line 3
    long-to-int v0, v0

    .line 4
    return v0
.end method

.method public getArticleNumberLong()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/net/nntp/Article;->articleNumber:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getChild()Lorg/apache/commons/net/nntp/Article;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/nntp/Article;->kid:Lorg/apache/commons/net/nntp/Article;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/nntp/Article;->date:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFrom()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/nntp/Article;->from:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNext()Lorg/apache/commons/net/nntp/Article;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/nntp/Article;->next:Lorg/apache/commons/net/nntp/Article;

    .line 2
    .line 3
    return-object v0
.end method

.method public getReferences()[Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/nntp/Article;->references:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lorg/apache/commons/net/util/NetConstants;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    sget-object v1, Lorg/apache/commons/net/util/NetConstants;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, [Ljava/lang/String;

    .line 15
    .line 16
    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/nntp/Article;->subject:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public isDummy()Z
    .locals 4

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/net/nntp/Article;->articleNumber:J

    .line 2
    .line 3
    const-wide/16 v2, -0x1

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    return v0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    return v0
.end method

.method public makeDummy()Lorg/apache/commons/net/nntp/Article;
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/commons/net/nntp/Article;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/apache/commons/net/nntp/Article;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public bridge synthetic makeDummy()Lorg/apache/commons/net/nntp/Threadable;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lorg/apache/commons/net/nntp/Article;->makeDummy()Lorg/apache/commons/net/nntp/Article;

    move-result-object v0

    return-object v0
.end method

.method public messageThreadId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/nntp/Article;->articleId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public messageThreadReferences()[Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/net/nntp/Article;->getReferences()[Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public setArticleId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/commons/net/nntp/Article;->articleId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setArticleNumber(I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    int-to-long v0, p1

    .line 2
    iput-wide v0, p0, Lorg/apache/commons/net/nntp/Article;->articleNumber:J

    .line 3
    .line 4
    return-void
.end method

.method public setArticleNumber(J)V
    .locals 0

    .line 5
    iput-wide p1, p0, Lorg/apache/commons/net/nntp/Article;->articleNumber:J

    return-void
.end method

.method public setChild(Lorg/apache/commons/net/nntp/Article;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lorg/apache/commons/net/nntp/Article;->kid:Lorg/apache/commons/net/nntp/Article;

    .line 8
    invoke-direct {p0}, Lorg/apache/commons/net/nntp/Article;->flushSubjectCache()V

    return-void
.end method

.method public bridge synthetic setChild(Lorg/apache/commons/net/nntp/Threadable;)V
    .locals 0

    .line 1
    check-cast p1, Lorg/apache/commons/net/nntp/Article;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/nntp/Article;->setChild(Lorg/apache/commons/net/nntp/Article;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/commons/net/nntp/Article;->date:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setFrom(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/commons/net/nntp/Article;->from:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setNext(Lorg/apache/commons/net/nntp/Article;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lorg/apache/commons/net/nntp/Article;->next:Lorg/apache/commons/net/nntp/Article;

    .line 8
    invoke-direct {p0}, Lorg/apache/commons/net/nntp/Article;->flushSubjectCache()V

    return-void
.end method

.method public bridge synthetic setNext(Lorg/apache/commons/net/nntp/Threadable;)V
    .locals 0

    .line 1
    check-cast p1, Lorg/apache/commons/net/nntp/Article;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/nntp/Article;->setNext(Lorg/apache/commons/net/nntp/Article;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/commons/net/nntp/Article;->subject:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public simplifiedSubject()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/nntp/Article;->simplifiedSubject:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lorg/apache/commons/net/nntp/Article;->simplifySubject()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/net/nntp/Article;->simplifiedSubject:Ljava/lang/String;

    .line 9
    .line 10
    return-object v0
.end method

.method public subjectIsReply()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/net/nntp/Article;->isReply:Z

    .line 2
    .line 3
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-wide v1, p0, Lorg/apache/commons/net/nntp/Article;->articleNumber:J

    .line 7
    .line 8
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, " "

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    iget-object v2, p0, Lorg/apache/commons/net/nntp/Article;->articleId:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lorg/apache/commons/net/nntp/Article;->subject:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    return-object v0
.end method
