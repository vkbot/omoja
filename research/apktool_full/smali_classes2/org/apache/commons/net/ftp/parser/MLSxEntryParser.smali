.class public Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;
.super Lorg/apache/commons/net/ftp/FTPFileEntryParserImpl;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field private static final INSTANCE:Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;

.field private static final TYPE_TO_INT:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final UNIX_GROUPS:[I

.field private static final UNIX_PERMS:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1
    new-instance v0, Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;->INSTANCE:Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;

    .line 7
    .line 8
    new-instance v0, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;->TYPE_TO_INT:Ljava/util/HashMap;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    const-string v3, "file"

    .line 21
    .line 22
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    const/4 v2, 0x1

    .line 26
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    const-string v4, "cdir"

    .line 31
    .line 32
    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    const-string v4, "pdir"

    .line 36
    .line 37
    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    const-string v4, "dir"

    .line 41
    .line 42
    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    const/4 v0, 0x2

    .line 46
    filled-new-array {v1, v2, v0}, [I

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    sput-object v3, Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;->UNIX_GROUPS:[I

    .line 51
    .line 52
    new-array v4, v1, [I

    .line 53
    .line 54
    filled-new-array {v0}, [I

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    filled-new-array {v2}, [I

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    filled-new-array {v0, v2}, [I

    .line 63
    .line 64
    .line 65
    move-result-object v7

    .line 66
    filled-new-array {v1}, [I

    .line 67
    .line 68
    .line 69
    move-result-object v8

    .line 70
    filled-new-array {v1, v0}, [I

    .line 71
    .line 72
    .line 73
    move-result-object v9

    .line 74
    filled-new-array {v1, v2}, [I

    .line 75
    .line 76
    .line 77
    move-result-object v10

    .line 78
    filled-new-array {v1, v2, v0}, [I

    .line 79
    .line 80
    .line 81
    move-result-object v11

    .line 82
    filled-new-array/range {v4 .. v11}, [[I

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    sput-object v0, Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;->UNIX_PERMS:[[I

    .line 87
    .line 88
    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/net/ftp/FTPFileEntryParserImpl;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private doUnixPerms(Lorg/apache/commons/net/ftp/FTPFile;Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    array-length v0, p2

    .line 6
    const/4 v1, 0x0

    .line 7
    move v2, v1

    .line 8
    :goto_0
    if-ge v2, v0, :cond_6

    .line 9
    .line 10
    aget-char v3, p2, v2

    .line 11
    .line 12
    const/16 v4, 0x61

    .line 13
    .line 14
    const/4 v5, 0x1

    .line 15
    if-eq v3, v4, :cond_5

    .line 16
    .line 17
    const/16 v4, 0x70

    .line 18
    .line 19
    if-eq v3, v4, :cond_4

    .line 20
    .line 21
    const/16 v4, 0x72

    .line 22
    .line 23
    if-eq v3, v4, :cond_3

    .line 24
    .line 25
    const/16 v4, 0x77

    .line 26
    .line 27
    if-eq v3, v4, :cond_2

    .line 28
    .line 29
    const/16 v4, 0x6c

    .line 30
    .line 31
    if-eq v3, v4, :cond_1

    .line 32
    .line 33
    const/16 v4, 0x6d

    .line 34
    .line 35
    if-eq v3, v4, :cond_0

    .line 36
    .line 37
    packed-switch v3, :pswitch_data_0

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :pswitch_0
    invoke-virtual {p1, v1, v1, v5}, Lorg/apache/commons/net/ftp/FTPFile;->setPermission(IIZ)V

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :pswitch_1
    invoke-virtual {p1, v1, v5, v5}, Lorg/apache/commons/net/ftp/FTPFile;->setPermission(IIZ)V

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :pswitch_2
    invoke-virtual {p1, v1, v5, v5}, Lorg/apache/commons/net/ftp/FTPFile;->setPermission(IIZ)V

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_0
    invoke-virtual {p1, v1, v5, v5}, Lorg/apache/commons/net/ftp/FTPFile;->setPermission(IIZ)V

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_1
    const/4 v3, 0x2

    .line 58
    invoke-virtual {p1, v1, v3, v5}, Lorg/apache/commons/net/ftp/FTPFile;->setPermission(IIZ)V

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_2
    invoke-virtual {p1, v1, v5, v5}, Lorg/apache/commons/net/ftp/FTPFile;->setPermission(IIZ)V

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_3
    invoke-virtual {p1, v1, v1, v5}, Lorg/apache/commons/net/ftp/FTPFile;->setPermission(IIZ)V

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_4
    invoke-virtual {p1, v1, v5, v5}, Lorg/apache/commons/net/ftp/FTPFile;->setPermission(IIZ)V

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_5
    invoke-virtual {p1, v1, v5, v5}, Lorg/apache/commons/net/ftp/FTPFile;->setPermission(IIZ)V

    .line 75
    .line 76
    .line 77
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_6
    return-void

    .line 81
    :pswitch_data_0
    .packed-switch 0x63
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getInstance()Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;->INSTANCE:Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;

    .line 2
    .line 3
    return-object v0
.end method

.method public static parseEntry(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFile;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;->INSTANCE:Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;->parseFTPEntry(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFile;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static parseGMTdateTime(Ljava/lang/String;)Ljava/util/Calendar;
    .locals 5

    .line 1
    const-string v0, "."

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 11
    .line 12
    const-string v2, "yyyyMMddHHmmss.SSS"

    .line 13
    .line 14
    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 20
    .line 21
    const-string v2, "yyyyMMddHHmmss"

    .line 22
    .line 23
    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    move v2, v1

    .line 27
    :goto_0
    const-string v3, "GMT"

    .line 28
    .line 29
    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {v0, v3}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 34
    .line 35
    .line 36
    new-instance v4, Ljava/util/GregorianCalendar;

    .line 37
    .line 38
    invoke-direct {v4, v3}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 39
    .line 40
    .line 41
    new-instance v3, Ljava/text/ParsePosition;

    .line 42
    .line 43
    invoke-direct {v3, v1}, Ljava/text/ParsePosition;-><init>(I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setLenient(Z)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, p0, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v3}, Ljava/text/ParsePosition;->getIndex()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    if-eq v1, p0, :cond_1

    .line 62
    .line 63
    const/4 p0, 0x0

    .line 64
    return-object p0

    .line 65
    :cond_1
    invoke-virtual {v4, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 66
    .line 67
    .line 68
    if-nez v2, :cond_2

    .line 69
    .line 70
    const/16 p0, 0xe

    .line 71
    .line 72
    invoke-virtual {v4, p0}, Ljava/util/Calendar;->clear(I)V

    .line 73
    .line 74
    .line 75
    :cond_2
    return-object v4
.end method

.method public static parseGmtInstant(Ljava/lang/String;)Ljava/time/Instant;
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;->parseGMTdateTime(Ljava/lang/String;)Ljava/util/Calendar;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lorg/apache/commons/io/filefilter/f;->n(Ljava/util/Calendar;)Ljava/time/Instant;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method


# virtual methods
.method public parseFTPEntry(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFile;
    .locals 18

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const-string v1, " "

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x1

    .line 11
    if-eqz v2, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-le v1, v4, :cond_0

    .line 18
    .line 19
    new-instance v1, Lorg/apache/commons/net/ftp/FTPFile;

    .line 20
    .line 21
    invoke-direct {v1}, Lorg/apache/commons/net/ftp/FTPFile;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v0}, Lorg/apache/commons/net/ftp/FTPFile;->setRawListing(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v1, v0}, Lorg/apache/commons/net/ftp/FTPFile;->setName(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-object v1

    .line 35
    :cond_0
    return-object v3

    .line 36
    :cond_1
    const/4 v2, 0x2

    .line 37
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    array-length v5, v1

    .line 42
    if-ne v5, v2, :cond_2

    .line 43
    .line 44
    aget-object v5, v1, v4

    .line 45
    .line 46
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    if-eqz v5, :cond_3

    .line 51
    .line 52
    :cond_2
    move-object/from16 v2, p0

    .line 53
    .line 54
    move-object/from16 v17, v3

    .line 55
    .line 56
    goto/16 :goto_9

    .line 57
    .line 58
    :cond_3
    const/4 v5, 0x0

    .line 59
    aget-object v6, v1, v5

    .line 60
    .line 61
    const-string v7, ";"

    .line 62
    .line 63
    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 64
    .line 65
    .line 66
    move-result v8

    .line 67
    if-nez v8, :cond_4

    .line 68
    .line 69
    return-object v3

    .line 70
    :cond_4
    new-instance v8, Lorg/apache/commons/net/ftp/FTPFile;

    .line 71
    .line 72
    invoke-direct {v8}, Lorg/apache/commons/net/ftp/FTPFile;-><init>()V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v8, v0}, Lorg/apache/commons/net/ftp/FTPFile;->setRawListing(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    aget-object v0, v1, v4

    .line 79
    .line 80
    invoke-virtual {v8, v0}, Lorg/apache/commons/net/ftp/FTPFile;->setName(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    aget-object v1, v1, v5

    .line 88
    .line 89
    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 90
    .line 91
    invoke-virtual {v1, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    const-string v6, "unix.mode="

    .line 96
    .line 97
    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    array-length v6, v0

    .line 102
    move v7, v5

    .line 103
    :goto_0
    if-ge v7, v6, :cond_14

    .line 104
    .line 105
    aget-object v9, v0, v7

    .line 106
    .line 107
    const-string v10, "="

    .line 108
    .line 109
    const/4 v11, -0x1

    .line 110
    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v9

    .line 114
    array-length v10, v9

    .line 115
    if-eq v10, v2, :cond_5

    .line 116
    .line 117
    return-object v3

    .line 118
    :cond_5
    aget-object v10, v9, v5

    .line 119
    .line 120
    sget-object v12, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 121
    .line 122
    invoke-virtual {v10, v12}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v10

    .line 126
    aget-object v9, v9, v4

    .line 127
    .line 128
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    .line 129
    .line 130
    .line 131
    move-result v13

    .line 132
    if-eqz v13, :cond_6

    .line 133
    .line 134
    move-object/from16 v2, p0

    .line 135
    .line 136
    move-object/from16 v17, v3

    .line 137
    .line 138
    goto/16 :goto_8

    .line 139
    .line 140
    :cond_6
    invoke-virtual {v9, v12}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v13

    .line 144
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    .line 148
    .line 149
    .line 150
    move-result v14

    .line 151
    const/4 v15, 0x3

    .line 152
    sparse-switch v14, :sswitch_data_0

    .line 153
    .line 154
    .line 155
    :goto_1
    move v14, v11

    .line 156
    goto :goto_2

    .line 157
    :sswitch_0
    const-string v14, "type"

    .line 158
    .line 159
    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-result v14

    .line 163
    if-nez v14, :cond_7

    .line 164
    .line 165
    goto :goto_1

    .line 166
    :cond_7
    move v14, v15

    .line 167
    goto :goto_2

    .line 168
    :sswitch_1
    const-string v14, "size"

    .line 169
    .line 170
    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    move-result v14

    .line 174
    if-nez v14, :cond_8

    .line 175
    .line 176
    goto :goto_1

    .line 177
    :cond_8
    move v14, v2

    .line 178
    goto :goto_2

    .line 179
    :sswitch_2
    const-string v14, "sizd"

    .line 180
    .line 181
    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    move-result v14

    .line 185
    if-nez v14, :cond_9

    .line 186
    .line 187
    goto :goto_1

    .line 188
    :cond_9
    move v14, v4

    .line 189
    goto :goto_2

    .line 190
    :sswitch_3
    const-string v14, "modify"

    .line 191
    .line 192
    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    move-result v14

    .line 196
    if-nez v14, :cond_a

    .line 197
    .line 198
    goto :goto_1

    .line 199
    :cond_a
    move v14, v5

    .line 200
    :goto_2
    packed-switch v14, :pswitch_data_0

    .line 201
    .line 202
    .line 203
    const-string v14, "unix."

    .line 204
    .line 205
    invoke-virtual {v10, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 206
    .line 207
    .line 208
    move-result v14

    .line 209
    if-eqz v14, :cond_11

    .line 210
    .line 211
    const/4 v13, 0x5

    .line 212
    invoke-virtual {v10, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v10

    .line 216
    invoke-virtual {v10, v12}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v10

    .line 220
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    .line 224
    .line 225
    .line 226
    move-result v12

    .line 227
    sparse-switch v12, :sswitch_data_1

    .line 228
    .line 229
    .line 230
    goto :goto_3

    .line 231
    :sswitch_4
    const-string v12, "owner"

    .line 232
    .line 233
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 234
    .line 235
    .line 236
    move-result v10

    .line 237
    if-nez v10, :cond_b

    .line 238
    .line 239
    goto :goto_3

    .line 240
    :cond_b
    move v11, v2

    .line 241
    goto :goto_3

    .line 242
    :sswitch_5
    const-string v12, "group"

    .line 243
    .line 244
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    move-result v10

    .line 248
    if-nez v10, :cond_c

    .line 249
    .line 250
    goto :goto_3

    .line 251
    :cond_c
    move v11, v4

    .line 252
    goto :goto_3

    .line 253
    :sswitch_6
    const-string v12, "mode"

    .line 254
    .line 255
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 256
    .line 257
    .line 258
    move-result v10

    .line 259
    if-nez v10, :cond_d

    .line 260
    .line 261
    goto :goto_3

    .line 262
    :cond_d
    move v11, v5

    .line 263
    :goto_3
    packed-switch v11, :pswitch_data_1

    .line 264
    .line 265
    .line 266
    :cond_e
    :goto_4
    move-object/from16 v17, v3

    .line 267
    .line 268
    goto :goto_7

    .line 269
    :pswitch_0
    invoke-virtual {v8, v9}, Lorg/apache/commons/net/ftp/FTPFile;->setUser(Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    goto :goto_4

    .line 273
    :pswitch_1
    invoke-virtual {v8, v9}, Lorg/apache/commons/net/ftp/FTPFile;->setGroup(Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    goto :goto_4

    .line 277
    :pswitch_2
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 278
    .line 279
    .line 280
    move-result v10

    .line 281
    sub-int/2addr v10, v15

    .line 282
    move v11, v5

    .line 283
    :goto_5
    if-ge v11, v15, :cond_e

    .line 284
    .line 285
    add-int v12, v10, v11

    .line 286
    .line 287
    invoke-virtual {v9, v12}, Ljava/lang/String;->charAt(I)C

    .line 288
    .line 289
    .line 290
    move-result v12

    .line 291
    add-int/lit8 v12, v12, -0x30

    .line 292
    .line 293
    if-ltz v12, :cond_f

    .line 294
    .line 295
    const/4 v13, 0x7

    .line 296
    if-gt v12, v13, :cond_f

    .line 297
    .line 298
    sget-object v13, Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;->UNIX_PERMS:[[I

    .line 299
    .line 300
    aget-object v12, v13, v12

    .line 301
    .line 302
    array-length v13, v12

    .line 303
    move v14, v5

    .line 304
    :goto_6
    if-ge v14, v13, :cond_f

    .line 305
    .line 306
    aget v2, v12, v14

    .line 307
    .line 308
    sget-object v16, Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;->UNIX_GROUPS:[I

    .line 309
    .line 310
    move-object/from16 v17, v3

    .line 311
    .line 312
    aget v3, v16, v11

    .line 313
    .line 314
    invoke-virtual {v8, v3, v2, v4}, Lorg/apache/commons/net/ftp/FTPFile;->setPermission(IIZ)V

    .line 315
    .line 316
    .line 317
    add-int/lit8 v14, v14, 0x1

    .line 318
    .line 319
    move-object/from16 v3, v17

    .line 320
    .line 321
    const/4 v2, 0x2

    .line 322
    goto :goto_6

    .line 323
    :cond_f
    move-object/from16 v17, v3

    .line 324
    .line 325
    add-int/lit8 v11, v11, 0x1

    .line 326
    .line 327
    move-object/from16 v3, v17

    .line 328
    .line 329
    const/4 v2, 0x2

    .line 330
    goto :goto_5

    .line 331
    :cond_10
    :goto_7
    move-object/from16 v2, p0

    .line 332
    .line 333
    goto :goto_8

    .line 334
    :cond_11
    move-object/from16 v17, v3

    .line 335
    .line 336
    if-nez v1, :cond_10

    .line 337
    .line 338
    const-string v2, "perm"

    .line 339
    .line 340
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 341
    .line 342
    .line 343
    move-result v2

    .line 344
    if-eqz v2, :cond_10

    .line 345
    .line 346
    move-object/from16 v2, p0

    .line 347
    .line 348
    invoke-direct {v2, v8, v13}, Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;->doUnixPerms(Lorg/apache/commons/net/ftp/FTPFile;Ljava/lang/String;)V

    .line 349
    .line 350
    .line 351
    goto :goto_8

    .line 352
    :pswitch_3
    move-object/from16 v2, p0

    .line 353
    .line 354
    move-object/from16 v17, v3

    .line 355
    .line 356
    sget-object v3, Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;->TYPE_TO_INT:Ljava/util/HashMap;

    .line 357
    .line 358
    invoke-virtual {v3, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    .line 360
    .line 361
    move-result-object v3

    .line 362
    check-cast v3, Ljava/lang/Integer;

    .line 363
    .line 364
    if-nez v3, :cond_12

    .line 365
    .line 366
    invoke-virtual {v8, v15}, Lorg/apache/commons/net/ftp/FTPFile;->setType(I)V

    .line 367
    .line 368
    .line 369
    goto :goto_8

    .line 370
    :cond_12
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 371
    .line 372
    .line 373
    move-result v3

    .line 374
    invoke-virtual {v8, v3}, Lorg/apache/commons/net/ftp/FTPFile;->setType(I)V

    .line 375
    .line 376
    .line 377
    goto :goto_8

    .line 378
    :pswitch_4
    move-object/from16 v2, p0

    .line 379
    .line 380
    move-object/from16 v17, v3

    .line 381
    .line 382
    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 383
    .line 384
    .line 385
    move-result-wide v9

    .line 386
    invoke-virtual {v8, v9, v10}, Lorg/apache/commons/net/ftp/FTPFile;->setSize(J)V

    .line 387
    .line 388
    .line 389
    goto :goto_8

    .line 390
    :pswitch_5
    move-object/from16 v2, p0

    .line 391
    .line 392
    move-object/from16 v17, v3

    .line 393
    .line 394
    invoke-static {v9}, Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;->parseGMTdateTime(Ljava/lang/String;)Ljava/util/Calendar;

    .line 395
    .line 396
    .line 397
    move-result-object v3

    .line 398
    if-nez v3, :cond_13

    .line 399
    .line 400
    return-object v17

    .line 401
    :cond_13
    invoke-virtual {v8, v3}, Lorg/apache/commons/net/ftp/FTPFile;->setTimestamp(Ljava/util/Calendar;)V

    .line 402
    .line 403
    .line 404
    :goto_8
    add-int/lit8 v7, v7, 0x1

    .line 405
    .line 406
    move-object/from16 v3, v17

    .line 407
    .line 408
    const/4 v2, 0x2

    .line 409
    goto/16 :goto_0

    .line 410
    .line 411
    :cond_14
    move-object/from16 v2, p0

    .line 412
    .line 413
    return-object v8

    .line 414
    :goto_9
    return-object v17

    .line 415
    :sswitch_data_0
    .sparse-switch
        -0x3fb48746 -> :sswitch_3
        0x35e000 -> :sswitch_2
        0x35e001 -> :sswitch_1
        0x368f3a -> :sswitch_0
    .end sparse-switch

    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x3339a3 -> :sswitch_6
        0x5e0f67f -> :sswitch_5
        0x653f2b3 -> :sswitch_4
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
