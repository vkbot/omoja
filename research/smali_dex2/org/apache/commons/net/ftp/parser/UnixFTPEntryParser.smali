.class public Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;
.super Lorg/apache/commons/net/ftp/parser/ConfigurableFTPFileEntryParserImpl;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field static final DEFAULT_DATE_FORMAT:Ljava/lang/String; = "MMM d yyyy"

.field private static final DEFAULT_DATE_FORMAT_CN:Ljava/lang/String; = "M\'\u6708\' d yyyy"

.field private static final DEFAULT_DATE_FORMAT_JA:Ljava/lang/String; = "M\'\u6708\' d\'\u65e5\' yyyy\'\u5e74\'"

.field static final DEFAULT_RECENT_DATE_FORMAT:Ljava/lang/String; = "MMM d HH:mm"

.field private static final DEFAULT_RECENT_DATE_FORMAT_CN:Ljava/lang/String; = "M\'\u6708\' d HH:mm"

.field private static final DEFAULT_RECENT_DATE_FORMAT_JA:Ljava/lang/String; = "M\'\u6708\' d\'\u65e5\' HH:mm"

.field private static final JA_DAY:Ljava/lang/String; = "\u65e5"

.field private static final JA_MONTH:Ljava/lang/String; = "\u6708"

.field private static final JA_YEAR:Ljava/lang/String; = "\u5e74"

.field public static final NUMERIC_DATE_CONFIG:Lorg/apache/commons/net/ftp/FTPClientConfig;

.field static final NUMERIC_DATE_FORMAT:Ljava/lang/String; = "yyyy-MM-dd HH:mm"

.field private static final REGEX:Ljava/lang/String; = "([bcdelfmpSs-])(((r|-)(w|-)([xsStTL-]))((r|-)(w|-)([xsStTL-]))((r|-)(w|-)([xsStTL-])))\\+?\\s*(\\d+)\\s+(?:(\\S+(?:\\s\\S+)*?)\\s+)?(?:(\\S+(?:\\s\\S+)*)\\s+)?(\\d+(?:,\\s*\\d+)?)\\s+((?:\\d+[-/]\\d+[-/]\\d+)|(?:\\S{3}\\s+\\d{1,2})|(?:\\d{1,2}\\s+\\S{3})|(?:\\d{1,2}\u6708\\s+\\d{1,2}\u65e5)|(?:\\d{1,2}\u6708\\s+\\d{1,2}))\\s+((?:\\d+(?::\\d+)?)|(?:\\d{4}\u5e74))\\s(.*)"

.field private static final TOTAL_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field final trimLeadingSpaces:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 1
    const-string v0, "^total \\d+$"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;->TOTAL_PATTERN:Ljava/util/regex/Pattern;

    .line 8
    .line 9
    new-instance v0, Lorg/apache/commons/net/ftp/FTPClientConfig;

    .line 10
    .line 11
    const-string v1, "yyyy-MM-dd HH:mm"

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    const-string v3, "UNIX"

    .line 15
    .line 16
    invoke-direct {v0, v3, v1, v2}, Lorg/apache/commons/net/ftp/FTPClientConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;->NUMERIC_DATE_CONFIG:Lorg/apache/commons/net/ftp/FTPClientConfig;

    .line 20
    .line 21
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 13
    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;-><init>(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/net/ftp/FTPClientConfig;)V
    .registers 3

    const/4 v0, 0x0

    .line 12
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;-><init>(Lorg/apache/commons/net/ftp/FTPClientConfig;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/net/ftp/FTPClientConfig;Z)V
    .registers 4

    .line 1
    const-string v0, "([bcdelfmpSs-])(((r|-)(w|-)([xsStTL-]))((r|-)(w|-)([xsStTL-]))((r|-)(w|-)([xsStTL-])))\\+?\\s*(\\d+)\\s+(?:(\\S+(?:\\s\\S+)*?)\\s+)?(?:(\\S+(?:\\s\\S+)*)\\s+)?(\\d+(?:,\\s*\\d+)?)\\s+((?:\\d+[-/]\\d+[-/]\\d+)|(?:\\S{3}\\s+\\d{1,2})|(?:\\d{1,2}\\s+\\S{3})|(?:\\d{1,2}\u6708\\s+\\d{1,2}\u65e5)|(?:\\d{1,2}\u6708\\s+\\d{1,2}))\\s+((?:\\d+(?::\\d+)?)|(?:\\d{4}\u5e74))\\s(.*)"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/parser/ConfigurableFTPFileEntryParserImpl;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/parser/ConfigurableFTPFileEntryParserImpl;->configure(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    .line 7
    .line 8
    .line 9
    iput-boolean p2, p0, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;->trimLeadingSpaces:Z

    .line 10
    .line 11
    return-void
.end method

.method public static synthetic a(Ljava/lang/String;)Z
    .registers 1

    .line 1
    invoke-static {p0}, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;->lambda$preParse$0(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private static synthetic lambda$preParse$0(Ljava/lang/String;)Z
    .registers 2

    .line 1
    sget-object v0, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;->TOTAL_PATTERN:Ljava/util/regex/Pattern;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method


# virtual methods
.method public getDefaultConfiguration()Lorg/apache/commons/net/ftp/FTPClientConfig;
    .registers 5

    .line 1
    new-instance v0, Lorg/apache/commons/net/ftp/FTPClientConfig;

    .line 2
    .line 3
    const-string v1, "MMM d yyyy"

    .line 4
    .line 5
    const-string v2, "MMM d HH:mm"

    .line 6
    .line 7
    const-string v3, "UNIX"

    .line 8
    .line 9
    invoke-direct {v0, v3, v1, v2}, Lorg/apache/commons/net/ftp/FTPClientConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public parseFTPEntry(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFile;
    .registers 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "\u6708"

    .line 4
    .line 5
    new-instance v2, Lorg/apache/commons/net/ftp/FTPFile;

    .line 6
    .line 7
    invoke-direct {v2}, Lorg/apache/commons/net/ftp/FTPFile;-><init>()V

    .line 8
    .line 9
    .line 10
    move-object/from16 v3, p1

    .line 11
    .line 12
    invoke-virtual {v2, v3}, Lorg/apache/commons/net/ftp/FTPFile;->setRawListing(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual/range {p0 .. p1}, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;->matches(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-eqz v3, :cond_16b

    .line 20
    .line 21
    const/4 v3, 0x1

    .line 22
    invoke-virtual {v0, v3}, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;->group(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    const/16 v5, 0xf

    .line 27
    .line 28
    invoke-virtual {v0, v5}, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;->group(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    const/16 v6, 0x10

    .line 33
    .line 34
    invoke-virtual {v0, v6}, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;->group(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    const/16 v7, 0x11

    .line 39
    .line 40
    invoke-virtual {v0, v7}, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;->group(I)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v7

    .line 44
    const/16 v8, 0x12

    .line 45
    .line 46
    invoke-virtual {v0, v8}, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;->group(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v8

    .line 50
    new-instance v9, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    const/16 v10, 0x13

    .line 56
    .line 57
    invoke-virtual {v0, v10}, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;->group(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v11

    .line 61
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v11, " "

    .line 65
    .line 66
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const/16 v11, 0x14

    .line 70
    .line 71
    invoke-virtual {v0, v11}, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;->group(I)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v11

    .line 75
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v9

    .line 82
    const/16 v11, 0x15

    .line 83
    .line 84
    invoke-virtual {v0, v11}, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;->group(I)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v11

    .line 88
    iget-boolean v12, v0, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;->trimLeadingSpaces:Z

    .line 89
    .line 90
    if-eqz v12, :cond_63

    .line 91
    .line 92
    const-string v12, "^\\s+"

    .line 93
    .line 94
    const-string v13, ""

    .line 95
    .line 96
    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v11

    .line 100
    :cond_63
    :try_start_63
    invoke-virtual {v0, v10}, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;->group(I)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v12

    .line 104
    invoke-virtual {v12, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 105
    .line 106
    .line 107
    move-result v12
    :try_end_6b
    .catch Ljava/text/ParseException; {:try_start_63 .. :try_end_6b} :catch_c8

    .line 108
    const-string v13, "UNIX"

    .line 109
    .line 110
    const-string v14, "\u65e5"

    .line 111
    .line 112
    if-eqz v12, :cond_94

    .line 113
    .line 114
    :try_start_71
    invoke-virtual {v0, v10}, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;->group(I)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v12

    .line 118
    invoke-virtual {v12, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 119
    .line 120
    .line 121
    move-result v12

    .line 122
    if-eqz v12, :cond_94

    .line 123
    .line 124
    new-instance v1, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;

    .line 125
    .line 126
    invoke-direct {v1}, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;-><init>()V

    .line 127
    .line 128
    .line 129
    new-instance v10, Lorg/apache/commons/net/ftp/FTPClientConfig;

    .line 130
    .line 131
    const-string v12, "M\'\u6708\' d\'\u65e5\' yyyy\'\u5e74\'"

    .line 132
    .line 133
    const-string v14, "M\'\u6708\' d\'\u65e5\' HH:mm"

    .line 134
    .line 135
    invoke-direct {v10, v13, v12, v14}, Lorg/apache/commons/net/ftp/FTPClientConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v1, v10}, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->configure(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v1, v9}, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->parseTimestamp(Ljava/lang/String;)Ljava/util/Calendar;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    invoke-virtual {v2, v1}, Lorg/apache/commons/net/ftp/FTPFile;->setTimestamp(Ljava/util/Calendar;)V

    .line 146
    .line 147
    .line 148
    goto :goto_c8

    .line 149
    :cond_94
    invoke-virtual {v0, v10}, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;->group(I)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v12

    .line 153
    invoke-virtual {v12, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 154
    .line 155
    .line 156
    move-result v1

    .line 157
    if-eqz v1, :cond_c1

    .line 158
    .line 159
    invoke-virtual {v0, v10}, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;->group(I)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    invoke-virtual {v1, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 164
    .line 165
    .line 166
    move-result v1

    .line 167
    if-nez v1, :cond_c1

    .line 168
    .line 169
    new-instance v1, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;

    .line 170
    .line 171
    invoke-direct {v1}, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;-><init>()V

    .line 172
    .line 173
    .line 174
    new-instance v10, Lorg/apache/commons/net/ftp/FTPClientConfig;

    .line 175
    .line 176
    const-string v12, "M\'\u6708\' d yyyy"

    .line 177
    .line 178
    const-string v14, "M\'\u6708\' d HH:mm"

    .line 179
    .line 180
    invoke-direct {v10, v13, v12, v14}, Lorg/apache/commons/net/ftp/FTPClientConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v1, v10}, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->configure(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v1, v9}, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->parseTimestamp(Ljava/lang/String;)Ljava/util/Calendar;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    invoke-virtual {v2, v1}, Lorg/apache/commons/net/ftp/FTPFile;->setTimestamp(Ljava/util/Calendar;)V

    .line 191
    .line 192
    .line 193
    goto :goto_c8

    .line 194
    :cond_c1
    invoke-super {v0, v9}, Lorg/apache/commons/net/ftp/parser/ConfigurableFTPFileEntryParserImpl;->parseTimestamp(Ljava/lang/String;)Ljava/util/Calendar;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    invoke-virtual {v2, v1}, Lorg/apache/commons/net/ftp/FTPFile;->setTimestamp(Ljava/util/Calendar;)V
    :try_end_c8
    .catch Ljava/text/ParseException; {:try_start_71 .. :try_end_c8} :catch_c8

    .line 199
    .line 200
    .line 201
    :catch_c8
    :goto_c8
    const/4 v1, 0x0

    .line 202
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    .line 203
    .line 204
    .line 205
    move-result v4

    .line 206
    const/16 v9, 0x2d

    .line 207
    .line 208
    const/4 v10, 0x3

    .line 209
    const/4 v12, 0x2

    .line 210
    if-eq v4, v9, :cond_e6

    .line 211
    .line 212
    const/16 v9, 0x6c

    .line 213
    .line 214
    if-eq v4, v9, :cond_dd

    .line 215
    .line 216
    packed-switch v4, :pswitch_data_16e

    .line 217
    .line 218
    .line 219
    move v9, v1

    .line 220
    move v4, v10

    .line 221
    goto :goto_e8

    .line 222
    :cond_dd
    :pswitch_dd
    move v9, v1

    .line 223
    move v4, v12

    .line 224
    goto :goto_e8

    .line 225
    :pswitch_e0
    move v9, v1

    .line 226
    move v4, v3

    .line 227
    goto :goto_e8

    .line 228
    :pswitch_e3
    move v4, v1

    .line 229
    move v9, v3

    .line 230
    goto :goto_e8

    .line 231
    :cond_e6
    :pswitch_e6
    move v4, v1

    .line 232
    move v9, v4

    .line 233
    :goto_e8
    invoke-virtual {v2, v4}, Lorg/apache/commons/net/ftp/FTPFile;->setType(I)V

    .line 234
    .line 235
    .line 236
    move v14, v1

    .line 237
    const/4 v15, 0x4

    .line 238
    :goto_ed
    if-ge v14, v10, :cond_12f

    .line 239
    .line 240
    invoke-virtual {v0, v15}, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;->group(I)Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v10

    .line 244
    const/16 v16, 0x4

    .line 245
    .line 246
    const-string v13, "-"

    .line 247
    .line 248
    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 249
    .line 250
    .line 251
    move-result v10

    .line 252
    xor-int/2addr v10, v3

    .line 253
    invoke-virtual {v2, v14, v1, v10}, Lorg/apache/commons/net/ftp/FTPFile;->setPermission(IIZ)V

    .line 254
    .line 255
    .line 256
    add-int/lit8 v10, v15, 0x1

    .line 257
    .line 258
    invoke-virtual {v0, v10}, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;->group(I)Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v10

    .line 262
    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 263
    .line 264
    .line 265
    move-result v10

    .line 266
    xor-int/2addr v10, v3

    .line 267
    invoke-virtual {v2, v14, v3, v10}, Lorg/apache/commons/net/ftp/FTPFile;->setPermission(IIZ)V

    .line 268
    .line 269
    .line 270
    add-int/lit8 v10, v15, 0x2

    .line 271
    .line 272
    invoke-virtual {v0, v10}, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;->group(I)Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v10

    .line 276
    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 277
    .line 278
    .line 279
    move-result v13

    .line 280
    if-nez v13, :cond_125

    .line 281
    .line 282
    invoke-virtual {v10, v1}, Ljava/lang/String;->charAt(I)C

    .line 283
    .line 284
    .line 285
    move-result v10

    .line 286
    invoke-static {v10}, Ljava/lang/Character;->isUpperCase(C)Z

    .line 287
    .line 288
    .line 289
    move-result v10

    .line 290
    if-nez v10, :cond_125

    .line 291
    .line 292
    move v10, v3

    .line 293
    goto :goto_126

    .line 294
    :cond_125
    move v10, v1

    .line 295
    :goto_126
    invoke-virtual {v2, v14, v12, v10}, Lorg/apache/commons/net/ftp/FTPFile;->setPermission(IIZ)V

    .line 296
    .line 297
    .line 298
    add-int/lit8 v14, v14, 0x1

    .line 299
    .line 300
    add-int/lit8 v15, v15, 0x4

    .line 301
    .line 302
    const/4 v10, 0x3

    .line 303
    goto :goto_ed

    .line 304
    :cond_12f
    const/16 v16, 0x4

    .line 305
    .line 306
    if-nez v9, :cond_13a

    .line 307
    .line 308
    :try_start_133
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 309
    .line 310
    .line 311
    move-result v3

    .line 312
    invoke-virtual {v2, v3}, Lorg/apache/commons/net/ftp/FTPFile;->setHardLinkCount(I)V
    :try_end_13a
    .catch Ljava/lang/NumberFormatException; {:try_start_133 .. :try_end_13a} :catch_13a

    .line 313
    .line 314
    .line 315
    :catch_13a
    :cond_13a
    invoke-virtual {v2, v6}, Lorg/apache/commons/net/ftp/FTPFile;->setUser(Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    invoke-virtual {v2, v7}, Lorg/apache/commons/net/ftp/FTPFile;->setGroup(Ljava/lang/String;)V

    .line 319
    .line 320
    .line 321
    :try_start_140
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 322
    .line 323
    .line 324
    move-result-wide v5

    .line 325
    invoke-virtual {v2, v5, v6}, Lorg/apache/commons/net/ftp/FTPFile;->setSize(J)V
    :try_end_147
    .catch Ljava/lang/NumberFormatException; {:try_start_140 .. :try_end_147} :catch_147

    .line 326
    .line 327
    .line 328
    :catch_147
    if-ne v4, v12, :cond_167

    .line 329
    .line 330
    const-string v3, " -> "

    .line 331
    .line 332
    invoke-virtual {v11, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 333
    .line 334
    .line 335
    move-result v3

    .line 336
    const/4 v4, -0x1

    .line 337
    if-ne v3, v4, :cond_156

    .line 338
    .line 339
    invoke-virtual {v2, v11}, Lorg/apache/commons/net/ftp/FTPFile;->setName(Ljava/lang/String;)V

    .line 340
    .line 341
    .line 342
    goto :goto_16a

    .line 343
    :cond_156
    invoke-virtual {v11, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v1

    .line 347
    invoke-virtual {v2, v1}, Lorg/apache/commons/net/ftp/FTPFile;->setName(Ljava/lang/String;)V

    .line 348
    .line 349
    .line 350
    add-int/lit8 v3, v3, 0x4

    .line 351
    .line 352
    invoke-virtual {v11, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v1

    .line 356
    invoke-virtual {v2, v1}, Lorg/apache/commons/net/ftp/FTPFile;->setLink(Ljava/lang/String;)V

    .line 357
    .line 358
    .line 359
    goto :goto_16a

    .line 360
    :cond_167
    invoke-virtual {v2, v11}, Lorg/apache/commons/net/ftp/FTPFile;->setName(Ljava/lang/String;)V

    .line 361
    .line 362
    .line 363
    :goto_16a
    return-object v2

    .line 364
    :cond_16b
    const/4 v1, 0x0

    .line 365
    return-object v1

    .line 366
    nop

    .line 367
    :pswitch_data_16e
    .packed-switch 0x62
        :pswitch_e3
        :pswitch_e3
        :pswitch_e0
        :pswitch_dd
        :pswitch_e6
    .end packed-switch
.end method

.method public preParse(Ljava/util/List;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Li7/k;

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    invoke-direct {v0, v1}, Li7/k;-><init>(I)V

    .line 5
    .line 6
    .line 7
    invoke-interface {p1, v0}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    .line 8
    .line 9
    .line 10
    return-object p1
.end method
