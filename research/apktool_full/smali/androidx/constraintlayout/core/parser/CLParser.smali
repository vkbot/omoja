.class public Landroidx/constraintlayout/core/parser/CLParser;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/core/parser/CLParser$TYPE;
    }
.end annotation


# static fields
.field static sDebug:Z = false


# instance fields
.field private mContent:Ljava/lang/String;

.field private mHasComment:Z

.field private mLineNumber:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Landroidx/constraintlayout/core/parser/CLParser;->mHasComment:Z

    .line 6
    .line 7
    iput-object p1, p0, Landroidx/constraintlayout/core/parser/CLParser;->mContent:Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method

.method private createElement(Landroidx/constraintlayout/core/parser/CLElement;ILandroidx/constraintlayout/core/parser/CLParser$TYPE;Z[C)Landroidx/constraintlayout/core/parser/CLElement;
    .locals 3

    .line 1
    sget-boolean v0, Landroidx/constraintlayout/core/parser/CLParser;->sDebug:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 6
    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v2, "CREATE "

    .line 10
    .line 11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v2, " at "

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    aget-char v2, p5, p2

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    .line 35
    .line 36
    .line 37
    move-result p3

    .line 38
    const/4 v0, 0x0

    .line 39
    packed-switch p3, :pswitch_data_0

    .line 40
    .line 41
    .line 42
    move-object p3, v0

    .line 43
    goto :goto_1

    .line 44
    :pswitch_0
    invoke-static {p5}, Landroidx/constraintlayout/core/parser/CLToken;->allocate([C)Landroidx/constraintlayout/core/parser/CLElement;

    .line 45
    .line 46
    .line 47
    move-result-object p3

    .line 48
    goto :goto_1

    .line 49
    :pswitch_1
    invoke-static {p5}, Landroidx/constraintlayout/core/parser/CLKey;->allocate([C)Landroidx/constraintlayout/core/parser/CLElement;

    .line 50
    .line 51
    .line 52
    move-result-object p3

    .line 53
    goto :goto_1

    .line 54
    :pswitch_2
    invoke-static {p5}, Landroidx/constraintlayout/core/parser/CLString;->allocate([C)Landroidx/constraintlayout/core/parser/CLElement;

    .line 55
    .line 56
    .line 57
    move-result-object p3

    .line 58
    goto :goto_1

    .line 59
    :pswitch_3
    invoke-static {p5}, Landroidx/constraintlayout/core/parser/CLNumber;->allocate([C)Landroidx/constraintlayout/core/parser/CLElement;

    .line 60
    .line 61
    .line 62
    move-result-object p3

    .line 63
    goto :goto_1

    .line 64
    :pswitch_4
    invoke-static {p5}, Landroidx/constraintlayout/core/parser/CLArray;->allocate([C)Landroidx/constraintlayout/core/parser/CLElement;

    .line 65
    .line 66
    .line 67
    move-result-object p3

    .line 68
    :goto_0
    add-int/lit8 p2, p2, 0x1

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :pswitch_5
    invoke-static {p5}, Landroidx/constraintlayout/core/parser/CLObject;->allocate([C)Landroidx/constraintlayout/core/parser/CLObject;

    .line 72
    .line 73
    .line 74
    move-result-object p3

    .line 75
    goto :goto_0

    .line 76
    :goto_1
    if-nez p3, :cond_1

    .line 77
    .line 78
    return-object v0

    .line 79
    :cond_1
    iget p5, p0, Landroidx/constraintlayout/core/parser/CLParser;->mLineNumber:I

    .line 80
    .line 81
    invoke-virtual {p3, p5}, Landroidx/constraintlayout/core/parser/CLElement;->setLine(I)V

    .line 82
    .line 83
    .line 84
    if-eqz p4, :cond_2

    .line 85
    .line 86
    int-to-long p4, p2

    .line 87
    invoke-virtual {p3, p4, p5}, Landroidx/constraintlayout/core/parser/CLElement;->setStart(J)V

    .line 88
    .line 89
    .line 90
    :cond_2
    instance-of p2, p1, Landroidx/constraintlayout/core/parser/CLContainer;

    .line 91
    .line 92
    if-eqz p2, :cond_3

    .line 93
    .line 94
    check-cast p1, Landroidx/constraintlayout/core/parser/CLContainer;

    .line 95
    .line 96
    invoke-virtual {p3, p1}, Landroidx/constraintlayout/core/parser/CLElement;->setContainer(Landroidx/constraintlayout/core/parser/CLContainer;)V

    .line 97
    .line 98
    .line 99
    :cond_3
    return-object p3

    .line 100
    nop

    .line 101
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getNextJsonElement(ICLandroidx/constraintlayout/core/parser/CLElement;[C)Landroidx/constraintlayout/core/parser/CLElement;
    .locals 7

    .line 1
    const/16 v0, 0x9

    .line 2
    .line 3
    if-eq p2, v0, :cond_2

    .line 4
    .line 5
    const/16 v0, 0xa

    .line 6
    .line 7
    if-eq p2, v0, :cond_2

    .line 8
    .line 9
    const/16 v0, 0xd

    .line 10
    .line 11
    if-eq p2, v0, :cond_2

    .line 12
    .line 13
    const/16 v0, 0x20

    .line 14
    .line 15
    if-eq p2, v0, :cond_2

    .line 16
    .line 17
    const/16 v0, 0x22

    .line 18
    .line 19
    if-eq p2, v0, :cond_6

    .line 20
    .line 21
    const/16 v0, 0x27

    .line 22
    .line 23
    if-eq p2, v0, :cond_6

    .line 24
    .line 25
    const/16 v0, 0x5b

    .line 26
    .line 27
    if-eq p2, v0, :cond_5

    .line 28
    .line 29
    const/16 v0, 0x5d

    .line 30
    .line 31
    if-eq p2, v0, :cond_3

    .line 32
    .line 33
    const/16 v0, 0x7b

    .line 34
    .line 35
    if-eq p2, v0, :cond_4

    .line 36
    .line 37
    const/16 v0, 0x7d

    .line 38
    .line 39
    if-eq p2, v0, :cond_3

    .line 40
    .line 41
    packed-switch p2, :pswitch_data_0

    .line 42
    .line 43
    .line 44
    instance-of v0, p3, Landroidx/constraintlayout/core/parser/CLContainer;

    .line 45
    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    instance-of v0, p3, Landroidx/constraintlayout/core/parser/CLObject;

    .line 49
    .line 50
    if-nez v0, :cond_1

    .line 51
    .line 52
    sget-object v4, Landroidx/constraintlayout/core/parser/CLParser$TYPE;->TOKEN:Landroidx/constraintlayout/core/parser/CLParser$TYPE;

    .line 53
    .line 54
    const/4 v5, 0x1

    .line 55
    move-object v1, p0

    .line 56
    move v3, p1

    .line 57
    move-object v2, p3

    .line 58
    move-object v6, p4

    .line 59
    invoke-direct/range {v1 .. v6}, Landroidx/constraintlayout/core/parser/CLParser;->createElement(Landroidx/constraintlayout/core/parser/CLElement;ILandroidx/constraintlayout/core/parser/CLParser$TYPE;Z[C)Landroidx/constraintlayout/core/parser/CLElement;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    move-object v0, v1

    .line 64
    move v2, v3

    .line 65
    move-object p3, p1

    .line 66
    check-cast p3, Landroidx/constraintlayout/core/parser/CLToken;

    .line 67
    .line 68
    int-to-long v1, v2

    .line 69
    invoke-virtual {p3, p2, v1, v2}, Landroidx/constraintlayout/core/parser/CLToken;->validate(CJ)Z

    .line 70
    .line 71
    .line 72
    move-result p4

    .line 73
    if-eqz p4, :cond_0

    .line 74
    .line 75
    return-object p1

    .line 76
    :cond_0
    new-instance p1, Landroidx/constraintlayout/core/parser/CLParsingException;

    .line 77
    .line 78
    iget p4, v0, Landroidx/constraintlayout/core/parser/CLParser;->mLineNumber:I

    .line 79
    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    const-string v2, "incorrect token <"

    .line 83
    .line 84
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string p2, "> at line "

    .line 91
    .line 92
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    invoke-direct {p1, p2, p3}, Landroidx/constraintlayout/core/parser/CLParsingException;-><init>(Ljava/lang/String;Landroidx/constraintlayout/core/parser/CLElement;)V

    .line 103
    .line 104
    .line 105
    throw p1

    .line 106
    :cond_1
    move-object v0, p0

    .line 107
    move v2, p1

    .line 108
    move-object v1, p3

    .line 109
    move-object v5, p4

    .line 110
    sget-object v3, Landroidx/constraintlayout/core/parser/CLParser$TYPE;->KEY:Landroidx/constraintlayout/core/parser/CLParser$TYPE;

    .line 111
    .line 112
    const/4 v4, 0x1

    .line 113
    invoke-direct/range {v0 .. v5}, Landroidx/constraintlayout/core/parser/CLParser;->createElement(Landroidx/constraintlayout/core/parser/CLElement;ILandroidx/constraintlayout/core/parser/CLParser$TYPE;Z[C)Landroidx/constraintlayout/core/parser/CLElement;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    return-object p1

    .line 118
    :pswitch_0
    move-object v0, p0

    .line 119
    move v2, p1

    .line 120
    move-object v1, p3

    .line 121
    move-object v5, p4

    .line 122
    const/4 p1, 0x1

    .line 123
    add-int/lit8 p2, v2, 0x1

    .line 124
    .line 125
    array-length p3, v5

    .line 126
    if-ge p2, p3, :cond_8

    .line 127
    .line 128
    aget-char p2, v5, p2

    .line 129
    .line 130
    const/16 p3, 0x2f

    .line 131
    .line 132
    if-ne p2, p3, :cond_8

    .line 133
    .line 134
    iput-boolean p1, v0, Landroidx/constraintlayout/core/parser/CLParser;->mHasComment:Z

    .line 135
    .line 136
    return-object v1

    .line 137
    :pswitch_1
    move-object v0, p0

    .line 138
    :cond_2
    move-object v1, p3

    .line 139
    goto :goto_1

    .line 140
    :pswitch_2
    move-object v0, p0

    .line 141
    move v2, p1

    .line 142
    move-object v1, p3

    .line 143
    move-object v5, p4

    .line 144
    sget-object v3, Landroidx/constraintlayout/core/parser/CLParser$TYPE;->NUMBER:Landroidx/constraintlayout/core/parser/CLParser$TYPE;

    .line 145
    .line 146
    const/4 v4, 0x1

    .line 147
    invoke-direct/range {v0 .. v5}, Landroidx/constraintlayout/core/parser/CLParser;->createElement(Landroidx/constraintlayout/core/parser/CLElement;ILandroidx/constraintlayout/core/parser/CLParser$TYPE;Z[C)Landroidx/constraintlayout/core/parser/CLElement;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    return-object p1

    .line 152
    :cond_3
    move v2, p1

    .line 153
    move-object v1, p3

    .line 154
    goto :goto_0

    .line 155
    :cond_4
    move v2, p1

    .line 156
    move-object v1, p3

    .line 157
    move-object v5, p4

    .line 158
    sget-object v3, Landroidx/constraintlayout/core/parser/CLParser$TYPE;->OBJECT:Landroidx/constraintlayout/core/parser/CLParser$TYPE;

    .line 159
    .line 160
    const/4 v4, 0x1

    .line 161
    move-object v0, p0

    .line 162
    invoke-direct/range {v0 .. v5}, Landroidx/constraintlayout/core/parser/CLParser;->createElement(Landroidx/constraintlayout/core/parser/CLElement;ILandroidx/constraintlayout/core/parser/CLParser$TYPE;Z[C)Landroidx/constraintlayout/core/parser/CLElement;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    return-object p1

    .line 167
    :goto_0
    add-int/lit8 p1, v2, -0x1

    .line 168
    .line 169
    int-to-long p1, p1

    .line 170
    invoke-virtual {v1, p1, p2}, Landroidx/constraintlayout/core/parser/CLElement;->setEnd(J)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v1}, Landroidx/constraintlayout/core/parser/CLElement;->getContainer()Landroidx/constraintlayout/core/parser/CLElement;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    int-to-long p2, v2

    .line 178
    invoke-virtual {p1, p2, p3}, Landroidx/constraintlayout/core/parser/CLElement;->setEnd(J)V

    .line 179
    .line 180
    .line 181
    return-object p1

    .line 182
    :cond_5
    move v2, p1

    .line 183
    move-object v1, p3

    .line 184
    move-object v5, p4

    .line 185
    sget-object v3, Landroidx/constraintlayout/core/parser/CLParser$TYPE;->ARRAY:Landroidx/constraintlayout/core/parser/CLParser$TYPE;

    .line 186
    .line 187
    const/4 v4, 0x1

    .line 188
    move-object v0, p0

    .line 189
    invoke-direct/range {v0 .. v5}, Landroidx/constraintlayout/core/parser/CLParser;->createElement(Landroidx/constraintlayout/core/parser/CLElement;ILandroidx/constraintlayout/core/parser/CLParser$TYPE;Z[C)Landroidx/constraintlayout/core/parser/CLElement;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    return-object p1

    .line 194
    :cond_6
    move v2, p1

    .line 195
    move-object v1, p3

    .line 196
    move-object v5, p4

    .line 197
    instance-of p1, v1, Landroidx/constraintlayout/core/parser/CLObject;

    .line 198
    .line 199
    if-eqz p1, :cond_7

    .line 200
    .line 201
    sget-object v3, Landroidx/constraintlayout/core/parser/CLParser$TYPE;->KEY:Landroidx/constraintlayout/core/parser/CLParser$TYPE;

    .line 202
    .line 203
    const/4 v4, 0x1

    .line 204
    move-object v0, p0

    .line 205
    invoke-direct/range {v0 .. v5}, Landroidx/constraintlayout/core/parser/CLParser;->createElement(Landroidx/constraintlayout/core/parser/CLElement;ILandroidx/constraintlayout/core/parser/CLParser$TYPE;Z[C)Landroidx/constraintlayout/core/parser/CLElement;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    return-object p1

    .line 210
    :cond_7
    sget-object v3, Landroidx/constraintlayout/core/parser/CLParser$TYPE;->STRING:Landroidx/constraintlayout/core/parser/CLParser$TYPE;

    .line 211
    .line 212
    const/4 v4, 0x1

    .line 213
    move-object v0, p0

    .line 214
    invoke-direct/range {v0 .. v5}, Landroidx/constraintlayout/core/parser/CLParser;->createElement(Landroidx/constraintlayout/core/parser/CLElement;ILandroidx/constraintlayout/core/parser/CLParser$TYPE;Z[C)Landroidx/constraintlayout/core/parser/CLElement;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    return-object p1

    .line 219
    :cond_8
    :goto_1
    return-object v1

    .line 220
    nop

    .line 221
    :pswitch_data_0
    .packed-switch 0x2b
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static parse(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLObject;
    .locals 1

    .line 408
    new-instance v0, Landroidx/constraintlayout/core/parser/CLParser;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/core/parser/CLParser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/constraintlayout/core/parser/CLParser;->parse()Landroidx/constraintlayout/core/parser/CLObject;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public parse()Landroidx/constraintlayout/core/parser/CLObject;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/constraintlayout/core/parser/CLParser;->mContent:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    array-length v2, v1

    .line 10
    const/4 v3, 0x1

    .line 11
    iput v3, v0, Landroidx/constraintlayout/core/parser/CLParser;->mLineNumber:I

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    move v5, v4

    .line 15
    :goto_0
    const/16 v6, 0xa

    .line 16
    .line 17
    const/4 v7, -0x1

    .line 18
    if-ge v5, v2, :cond_2

    .line 19
    .line 20
    aget-char v8, v1, v5

    .line 21
    .line 22
    const/16 v9, 0x7b

    .line 23
    .line 24
    if-ne v8, v9, :cond_0

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_0
    if-ne v8, v6, :cond_1

    .line 28
    .line 29
    iget v6, v0, Landroidx/constraintlayout/core/parser/CLParser;->mLineNumber:I

    .line 30
    .line 31
    add-int/2addr v6, v3

    .line 32
    iput v6, v0, Landroidx/constraintlayout/core/parser/CLParser;->mLineNumber:I

    .line 33
    .line 34
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    move v5, v7

    .line 38
    :goto_1
    if-eq v5, v7, :cond_1c

    .line 39
    .line 40
    invoke-static {v1}, Landroidx/constraintlayout/core/parser/CLObject;->allocate([C)Landroidx/constraintlayout/core/parser/CLObject;

    .line 41
    .line 42
    .line 43
    move-result-object v7

    .line 44
    iget v8, v0, Landroidx/constraintlayout/core/parser/CLParser;->mLineNumber:I

    .line 45
    .line 46
    invoke-virtual {v7, v8}, Landroidx/constraintlayout/core/parser/CLElement;->setLine(I)V

    .line 47
    .line 48
    .line 49
    int-to-long v8, v5

    .line 50
    invoke-virtual {v7, v8, v9}, Landroidx/constraintlayout/core/parser/CLElement;->setStart(J)V

    .line 51
    .line 52
    .line 53
    add-int/2addr v5, v3

    .line 54
    move-object v8, v7

    .line 55
    :goto_2
    if-ge v5, v2, :cond_6

    .line 56
    .line 57
    aget-char v9, v1, v5

    .line 58
    .line 59
    if-ne v9, v6, :cond_3

    .line 60
    .line 61
    iget v10, v0, Landroidx/constraintlayout/core/parser/CLParser;->mLineNumber:I

    .line 62
    .line 63
    add-int/2addr v10, v3

    .line 64
    iput v10, v0, Landroidx/constraintlayout/core/parser/CLParser;->mLineNumber:I

    .line 65
    .line 66
    :cond_3
    iget-boolean v10, v0, Landroidx/constraintlayout/core/parser/CLParser;->mHasComment:Z

    .line 67
    .line 68
    if-eqz v10, :cond_5

    .line 69
    .line 70
    if-ne v9, v6, :cond_4

    .line 71
    .line 72
    iput-boolean v4, v0, Landroidx/constraintlayout/core/parser/CLParser;->mHasComment:Z

    .line 73
    .line 74
    goto :goto_3

    .line 75
    :cond_4
    move/from16 v16, v3

    .line 76
    .line 77
    goto/16 :goto_7

    .line 78
    .line 79
    :cond_5
    :goto_3
    if-nez v8, :cond_7

    .line 80
    .line 81
    :cond_6
    move/from16 v16, v3

    .line 82
    .line 83
    goto/16 :goto_8

    .line 84
    .line 85
    :cond_7
    invoke-virtual {v8}, Landroidx/constraintlayout/core/parser/CLElement;->isDone()Z

    .line 86
    .line 87
    .line 88
    move-result v10

    .line 89
    if-eqz v10, :cond_9

    .line 90
    .line 91
    invoke-direct {v0, v5, v9, v8, v1}, Landroidx/constraintlayout/core/parser/CLParser;->getNextJsonElement(ICLandroidx/constraintlayout/core/parser/CLElement;[C)Landroidx/constraintlayout/core/parser/CLElement;

    .line 92
    .line 93
    .line 94
    move-result-object v8

    .line 95
    :cond_8
    :goto_4
    move/from16 v16, v3

    .line 96
    .line 97
    goto/16 :goto_6

    .line 98
    .line 99
    :cond_9
    instance-of v10, v8, Landroidx/constraintlayout/core/parser/CLObject;

    .line 100
    .line 101
    const/16 v11, 0x7d

    .line 102
    .line 103
    if-eqz v10, :cond_b

    .line 104
    .line 105
    if-ne v9, v11, :cond_a

    .line 106
    .line 107
    add-int/lit8 v9, v5, -0x1

    .line 108
    .line 109
    int-to-long v9, v9

    .line 110
    invoke-virtual {v8, v9, v10}, Landroidx/constraintlayout/core/parser/CLElement;->setEnd(J)V

    .line 111
    .line 112
    .line 113
    goto :goto_4

    .line 114
    :cond_a
    invoke-direct {v0, v5, v9, v8, v1}, Landroidx/constraintlayout/core/parser/CLParser;->getNextJsonElement(ICLandroidx/constraintlayout/core/parser/CLElement;[C)Landroidx/constraintlayout/core/parser/CLElement;

    .line 115
    .line 116
    .line 117
    move-result-object v8

    .line 118
    goto :goto_4

    .line 119
    :cond_b
    instance-of v10, v8, Landroidx/constraintlayout/core/parser/CLArray;

    .line 120
    .line 121
    const/16 v12, 0x5d

    .line 122
    .line 123
    if-eqz v10, :cond_d

    .line 124
    .line 125
    if-ne v9, v12, :cond_c

    .line 126
    .line 127
    add-int/lit8 v9, v5, -0x1

    .line 128
    .line 129
    int-to-long v9, v9

    .line 130
    invoke-virtual {v8, v9, v10}, Landroidx/constraintlayout/core/parser/CLElement;->setEnd(J)V

    .line 131
    .line 132
    .line 133
    goto :goto_4

    .line 134
    :cond_c
    invoke-direct {v0, v5, v9, v8, v1}, Landroidx/constraintlayout/core/parser/CLParser;->getNextJsonElement(ICLandroidx/constraintlayout/core/parser/CLElement;[C)Landroidx/constraintlayout/core/parser/CLElement;

    .line 135
    .line 136
    .line 137
    move-result-object v8

    .line 138
    goto :goto_4

    .line 139
    :cond_d
    instance-of v10, v8, Landroidx/constraintlayout/core/parser/CLString;

    .line 140
    .line 141
    const-wide/16 v13, 0x1

    .line 142
    .line 143
    if-eqz v10, :cond_e

    .line 144
    .line 145
    iget-wide v10, v8, Landroidx/constraintlayout/core/parser/CLElement;->mStart:J

    .line 146
    .line 147
    long-to-int v12, v10

    .line 148
    aget-char v12, v1, v12

    .line 149
    .line 150
    if-ne v12, v9, :cond_8

    .line 151
    .line 152
    add-long/2addr v10, v13

    .line 153
    invoke-virtual {v8, v10, v11}, Landroidx/constraintlayout/core/parser/CLElement;->setStart(J)V

    .line 154
    .line 155
    .line 156
    add-int/lit8 v9, v5, -0x1

    .line 157
    .line 158
    int-to-long v9, v9

    .line 159
    invoke-virtual {v8, v9, v10}, Landroidx/constraintlayout/core/parser/CLElement;->setEnd(J)V

    .line 160
    .line 161
    .line 162
    goto :goto_4

    .line 163
    :cond_e
    instance-of v15, v8, Landroidx/constraintlayout/core/parser/CLToken;

    .line 164
    .line 165
    if-eqz v15, :cond_10

    .line 166
    .line 167
    move-object v15, v8

    .line 168
    check-cast v15, Landroidx/constraintlayout/core/parser/CLToken;

    .line 169
    .line 170
    move/from16 v16, v3

    .line 171
    .line 172
    int-to-long v3, v5

    .line 173
    invoke-virtual {v15, v9, v3, v4}, Landroidx/constraintlayout/core/parser/CLToken;->validate(CJ)Z

    .line 174
    .line 175
    .line 176
    move-result v3

    .line 177
    if-eqz v3, :cond_f

    .line 178
    .line 179
    goto :goto_5

    .line 180
    :cond_f
    new-instance v1, Landroidx/constraintlayout/core/parser/CLParsingException;

    .line 181
    .line 182
    invoke-virtual {v15}, Landroidx/constraintlayout/core/parser/CLElement;->content()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    iget v3, v0, Landroidx/constraintlayout/core/parser/CLParser;->mLineNumber:I

    .line 187
    .line 188
    new-instance v4, Ljava/lang/StringBuilder;

    .line 189
    .line 190
    const-string v5, "parsing incorrect token "

    .line 191
    .line 192
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    const-string v2, " at line "

    .line 199
    .line 200
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v2

    .line 210
    invoke-direct {v1, v2, v15}, Landroidx/constraintlayout/core/parser/CLParsingException;-><init>(Ljava/lang/String;Landroidx/constraintlayout/core/parser/CLElement;)V

    .line 211
    .line 212
    .line 213
    throw v1

    .line 214
    :cond_10
    move/from16 v16, v3

    .line 215
    .line 216
    :goto_5
    instance-of v3, v8, Landroidx/constraintlayout/core/parser/CLKey;

    .line 217
    .line 218
    if-nez v3, :cond_11

    .line 219
    .line 220
    if-eqz v10, :cond_13

    .line 221
    .line 222
    :cond_11
    iget-wide v3, v8, Landroidx/constraintlayout/core/parser/CLElement;->mStart:J

    .line 223
    .line 224
    long-to-int v10, v3

    .line 225
    aget-char v10, v1, v10

    .line 226
    .line 227
    const/16 v15, 0x27

    .line 228
    .line 229
    if-eq v10, v15, :cond_12

    .line 230
    .line 231
    const/16 v15, 0x22

    .line 232
    .line 233
    if-ne v10, v15, :cond_13

    .line 234
    .line 235
    :cond_12
    if-ne v10, v9, :cond_13

    .line 236
    .line 237
    add-long/2addr v3, v13

    .line 238
    invoke-virtual {v8, v3, v4}, Landroidx/constraintlayout/core/parser/CLElement;->setStart(J)V

    .line 239
    .line 240
    .line 241
    add-int/lit8 v3, v5, -0x1

    .line 242
    .line 243
    int-to-long v3, v3

    .line 244
    invoke-virtual {v8, v3, v4}, Landroidx/constraintlayout/core/parser/CLElement;->setEnd(J)V

    .line 245
    .line 246
    .line 247
    :cond_13
    invoke-virtual {v8}, Landroidx/constraintlayout/core/parser/CLElement;->isDone()Z

    .line 248
    .line 249
    .line 250
    move-result v3

    .line 251
    if-nez v3, :cond_16

    .line 252
    .line 253
    if-eq v9, v11, :cond_14

    .line 254
    .line 255
    if-eq v9, v12, :cond_14

    .line 256
    .line 257
    const/16 v3, 0x2c

    .line 258
    .line 259
    if-eq v9, v3, :cond_14

    .line 260
    .line 261
    const/16 v3, 0x20

    .line 262
    .line 263
    if-eq v9, v3, :cond_14

    .line 264
    .line 265
    const/16 v3, 0x9

    .line 266
    .line 267
    if-eq v9, v3, :cond_14

    .line 268
    .line 269
    const/16 v3, 0xd

    .line 270
    .line 271
    if-eq v9, v3, :cond_14

    .line 272
    .line 273
    if-eq v9, v6, :cond_14

    .line 274
    .line 275
    const/16 v3, 0x3a

    .line 276
    .line 277
    if-ne v9, v3, :cond_16

    .line 278
    .line 279
    :cond_14
    add-int/lit8 v3, v5, -0x1

    .line 280
    .line 281
    int-to-long v3, v3

    .line 282
    invoke-virtual {v8, v3, v4}, Landroidx/constraintlayout/core/parser/CLElement;->setEnd(J)V

    .line 283
    .line 284
    .line 285
    if-eq v9, v11, :cond_15

    .line 286
    .line 287
    if-ne v9, v12, :cond_16

    .line 288
    .line 289
    :cond_15
    invoke-virtual {v8}, Landroidx/constraintlayout/core/parser/CLElement;->getContainer()Landroidx/constraintlayout/core/parser/CLElement;

    .line 290
    .line 291
    .line 292
    move-result-object v8

    .line 293
    invoke-virtual {v8, v3, v4}, Landroidx/constraintlayout/core/parser/CLElement;->setEnd(J)V

    .line 294
    .line 295
    .line 296
    instance-of v9, v8, Landroidx/constraintlayout/core/parser/CLKey;

    .line 297
    .line 298
    if-eqz v9, :cond_16

    .line 299
    .line 300
    invoke-virtual {v8}, Landroidx/constraintlayout/core/parser/CLElement;->getContainer()Landroidx/constraintlayout/core/parser/CLElement;

    .line 301
    .line 302
    .line 303
    move-result-object v8

    .line 304
    invoke-virtual {v8, v3, v4}, Landroidx/constraintlayout/core/parser/CLElement;->setEnd(J)V

    .line 305
    .line 306
    .line 307
    :cond_16
    :goto_6
    invoke-virtual {v8}, Landroidx/constraintlayout/core/parser/CLElement;->isDone()Z

    .line 308
    .line 309
    .line 310
    move-result v3

    .line 311
    if-eqz v3, :cond_18

    .line 312
    .line 313
    instance-of v3, v8, Landroidx/constraintlayout/core/parser/CLKey;

    .line 314
    .line 315
    if-eqz v3, :cond_17

    .line 316
    .line 317
    move-object v3, v8

    .line 318
    check-cast v3, Landroidx/constraintlayout/core/parser/CLKey;

    .line 319
    .line 320
    iget-object v3, v3, Landroidx/constraintlayout/core/parser/CLContainer;->mElements:Ljava/util/ArrayList;

    .line 321
    .line 322
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 323
    .line 324
    .line 325
    move-result v3

    .line 326
    if-lez v3, :cond_18

    .line 327
    .line 328
    :cond_17
    invoke-virtual {v8}, Landroidx/constraintlayout/core/parser/CLElement;->getContainer()Landroidx/constraintlayout/core/parser/CLElement;

    .line 329
    .line 330
    .line 331
    move-result-object v8

    .line 332
    :cond_18
    :goto_7
    add-int/lit8 v5, v5, 0x1

    .line 333
    .line 334
    move/from16 v3, v16

    .line 335
    .line 336
    const/4 v4, 0x0

    .line 337
    goto/16 :goto_2

    .line 338
    .line 339
    :goto_8
    if-eqz v8, :cond_1a

    .line 340
    .line 341
    invoke-virtual {v8}, Landroidx/constraintlayout/core/parser/CLElement;->isDone()Z

    .line 342
    .line 343
    .line 344
    move-result v1

    .line 345
    if-nez v1, :cond_1a

    .line 346
    .line 347
    instance-of v1, v8, Landroidx/constraintlayout/core/parser/CLString;

    .line 348
    .line 349
    if-eqz v1, :cond_19

    .line 350
    .line 351
    iget-wide v3, v8, Landroidx/constraintlayout/core/parser/CLElement;->mStart:J

    .line 352
    .line 353
    long-to-int v1, v3

    .line 354
    add-int/lit8 v1, v1, 0x1

    .line 355
    .line 356
    int-to-long v3, v1

    .line 357
    invoke-virtual {v8, v3, v4}, Landroidx/constraintlayout/core/parser/CLElement;->setStart(J)V

    .line 358
    .line 359
    .line 360
    :cond_19
    add-int/lit8 v1, v2, -0x1

    .line 361
    .line 362
    int-to-long v3, v1

    .line 363
    invoke-virtual {v8, v3, v4}, Landroidx/constraintlayout/core/parser/CLElement;->setEnd(J)V

    .line 364
    .line 365
    .line 366
    invoke-virtual {v8}, Landroidx/constraintlayout/core/parser/CLElement;->getContainer()Landroidx/constraintlayout/core/parser/CLElement;

    .line 367
    .line 368
    .line 369
    move-result-object v8

    .line 370
    goto :goto_8

    .line 371
    :cond_1a
    sget-boolean v1, Landroidx/constraintlayout/core/parser/CLParser;->sDebug:Z

    .line 372
    .line 373
    if-eqz v1, :cond_1b

    .line 374
    .line 375
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 376
    .line 377
    new-instance v2, Ljava/lang/StringBuilder;

    .line 378
    .line 379
    const-string v3, "Root: "

    .line 380
    .line 381
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 382
    .line 383
    .line 384
    invoke-virtual {v7}, Landroidx/constraintlayout/core/parser/CLObject;->toJSON()Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object v3

    .line 388
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    .line 390
    .line 391
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object v2

    .line 395
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 396
    .line 397
    .line 398
    :cond_1b
    return-object v7

    .line 399
    :cond_1c
    new-instance v1, Landroidx/constraintlayout/core/parser/CLParsingException;

    .line 400
    .line 401
    const-string v2, "invalid json content"

    .line 402
    .line 403
    const/4 v3, 0x0

    .line 404
    invoke-direct {v1, v2, v3}, Landroidx/constraintlayout/core/parser/CLParsingException;-><init>(Ljava/lang/String;Landroidx/constraintlayout/core/parser/CLElement;)V

    .line 405
    .line 406
    .line 407
    throw v1
.end method
