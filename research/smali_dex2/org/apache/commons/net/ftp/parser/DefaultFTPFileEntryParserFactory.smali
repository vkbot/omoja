.class public Lorg/apache/commons/net/ftp/parser/DefaultFTPFileEntryParserFactory;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lorg/apache/commons/net/ftp/parser/FTPFileEntryParserFactory;


# static fields
.field private static final JAVA_IDENTIFIER:Ljava/lang/String; = "\\p{javaJavaIdentifierStart}(\\p{javaJavaIdentifierPart})*"

.field private static final JAVA_QUALIFIED_NAME:Ljava/lang/String; = "(\\p{javaJavaIdentifierStart}(\\p{javaJavaIdentifierPart})*\\.)+\\p{javaJavaIdentifierStart}(\\p{javaJavaIdentifierPart})*"

.field private static final JAVA_QUALIFIED_NAME_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    const-string v0, "(\\p{javaJavaIdentifierStart}(\\p{javaJavaIdentifierPart})*\\.)+\\p{javaJavaIdentifierStart}(\\p{javaJavaIdentifierPart})*"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lorg/apache/commons/net/ftp/parser/DefaultFTPFileEntryParserFactory;->JAVA_QUALIFIED_NAME_PATTERN:Ljava/util/regex/Pattern;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private createFileEntryParser(Ljava/lang/String;Lorg/apache/commons/net/ftp/FTPClientConfig;)Lorg/apache/commons/net/ftp/FTPFileEntryParser;
    .registers 8

    .line 1
    sget-object v0, Lorg/apache/commons/net/ftp/parser/DefaultFTPFileEntryParserFactory;->JAVA_QUALIFIED_NAME_PATTERN:Ljava/util/regex/Pattern;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_4f

    .line 13
    .line 14
    :try_start_d
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    move-result-object v0
    :try_end_11
    .catch Ljava/lang/ClassNotFoundException; {:try_start_d .. :try_end_11} :catch_4f

    .line 18
    :try_start_11
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Lorg/apache/commons/net/ftp/FTPFileEntryParser;
    :try_end_1b
    .catch Ljava/lang/ClassCastException; {:try_start_11 .. :try_end_1b} :catch_21
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1b} :catch_1f
    .catch Ljava/lang/LinkageError; {:try_start_11 .. :try_end_1b} :catch_1d

    .line 27
    .line 28
    move-object v1, v2

    .line 29
    goto :goto_4f

    .line 30
    :catch_1d
    move-exception v0

    .line 31
    goto :goto_23

    .line 32
    :catch_1f
    move-exception v0

    .line 33
    goto :goto_23

    .line 34
    :catch_21
    move-exception v2

    .line 35
    goto :goto_2b

    .line 36
    :goto_23
    :try_start_23
    new-instance v2, Lorg/apache/commons/net/ftp/parser/ParserInitializationException;

    .line 37
    .line 38
    const-string v3, "Error initializing parser"

    .line 39
    .line 40
    invoke-direct {v2, v3, v0}, Lorg/apache/commons/net/ftp/parser/ParserInitializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    .line 42
    .line 43
    throw v2

    .line 44
    :goto_2b
    new-instance v3, Lorg/apache/commons/net/ftp/parser/ParserInitializationException;

    .line 45
    .line 46
    new-instance v4, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v0, " does not implement the interface "

    .line 59
    .line 60
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-class v0, Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-direct {v3, v0, v2}, Lorg/apache/commons/net/ftp/parser/ParserInitializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 77
    .line 78
    .line 79
    throw v3
    :try_end_4f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_23 .. :try_end_4f} :catch_4f

    .line 80
    :catch_4f
    :cond_4f
    :goto_4f
    if-nez v1, :cond_fa

    .line 81
    .line 82
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 83
    .line 84
    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    const-string v1, "UNIX_LTRIM"

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    if-eqz v1, :cond_67

    .line 95
    .line 96
    new-instance v1, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;

    .line 97
    .line 98
    const/4 p1, 0x1

    .line 99
    invoke-direct {v1, p2, p1}, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;-><init>(Lorg/apache/commons/net/ftp/FTPClientConfig;Z)V

    .line 100
    .line 101
    .line 102
    goto/16 :goto_fa

    .line 103
    .line 104
    :cond_67
    const-string v1, "UNIX"

    .line 105
    .line 106
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    if-eqz v1, :cond_77

    .line 111
    .line 112
    new-instance v1, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;

    .line 113
    .line 114
    const/4 p1, 0x0

    .line 115
    invoke-direct {v1, p2, p1}, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;-><init>(Lorg/apache/commons/net/ftp/FTPClientConfig;Z)V

    .line 116
    .line 117
    .line 118
    goto/16 :goto_fa

    .line 119
    .line 120
    :cond_77
    const-string v1, "VMS"

    .line 121
    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    if-eqz v1, :cond_86

    .line 127
    .line 128
    new-instance v1, Lorg/apache/commons/net/ftp/parser/VMSVersioningFTPEntryParser;

    .line 129
    .line 130
    invoke-direct {v1, p2}, Lorg/apache/commons/net/ftp/parser/VMSVersioningFTPEntryParser;-><init>(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    .line 131
    .line 132
    .line 133
    goto/16 :goto_fa

    .line 134
    .line 135
    :cond_86
    const-string v1, "WINDOWS"

    .line 136
    .line 137
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    if-eqz v1, :cond_93

    .line 142
    .line 143
    invoke-direct {p0, p2}, Lorg/apache/commons/net/ftp/parser/DefaultFTPFileEntryParserFactory;->createNTFTPEntryParser(Lorg/apache/commons/net/ftp/FTPClientConfig;)Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    goto :goto_fa

    .line 148
    :cond_93
    const-string v1, "OS/2"

    .line 149
    .line 150
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 151
    .line 152
    .line 153
    move-result v1

    .line 154
    if-eqz v1, :cond_a1

    .line 155
    .line 156
    new-instance v1, Lorg/apache/commons/net/ftp/parser/OS2FTPEntryParser;

    .line 157
    .line 158
    invoke-direct {v1, p2}, Lorg/apache/commons/net/ftp/parser/OS2FTPEntryParser;-><init>(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    .line 159
    .line 160
    .line 161
    goto :goto_fa

    .line 162
    :cond_a1
    const-string v1, "OS/400"

    .line 163
    .line 164
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 165
    .line 166
    .line 167
    move-result v1

    .line 168
    if-nez v1, :cond_f6

    .line 169
    .line 170
    const-string v1, "AS/400"

    .line 171
    .line 172
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 173
    .line 174
    .line 175
    move-result v1

    .line 176
    if-eqz v1, :cond_b2

    .line 177
    .line 178
    goto :goto_f6

    .line 179
    :cond_b2
    const-string v1, "MVS"

    .line 180
    .line 181
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 182
    .line 183
    .line 184
    move-result v1

    .line 185
    if-eqz v1, :cond_c0

    .line 186
    .line 187
    new-instance v1, Lorg/apache/commons/net/ftp/parser/MVSFTPEntryParser;

    .line 188
    .line 189
    invoke-direct {v1}, Lorg/apache/commons/net/ftp/parser/MVSFTPEntryParser;-><init>()V

    .line 190
    .line 191
    .line 192
    goto :goto_fa

    .line 193
    :cond_c0
    const-string v1, "NETWARE"

    .line 194
    .line 195
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 196
    .line 197
    .line 198
    move-result v1

    .line 199
    if-eqz v1, :cond_ce

    .line 200
    .line 201
    new-instance v1, Lorg/apache/commons/net/ftp/parser/NetwareFTPEntryParser;

    .line 202
    .line 203
    invoke-direct {v1, p2}, Lorg/apache/commons/net/ftp/parser/NetwareFTPEntryParser;-><init>(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    .line 204
    .line 205
    .line 206
    goto :goto_fa

    .line 207
    :cond_ce
    const-string v1, "MACOS PETER"

    .line 208
    .line 209
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 210
    .line 211
    .line 212
    move-result v1

    .line 213
    if-eqz v1, :cond_dc

    .line 214
    .line 215
    new-instance v1, Lorg/apache/commons/net/ftp/parser/MacOsPeterFTPEntryParser;

    .line 216
    .line 217
    invoke-direct {v1, p2}, Lorg/apache/commons/net/ftp/parser/MacOsPeterFTPEntryParser;-><init>(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    .line 218
    .line 219
    .line 220
    goto :goto_fa

    .line 221
    :cond_dc
    const-string v1, "TYPE: L8"

    .line 222
    .line 223
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 224
    .line 225
    .line 226
    move-result v0

    .line 227
    if-eqz v0, :cond_ea

    .line 228
    .line 229
    new-instance v1, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;

    .line 230
    .line 231
    invoke-direct {v1, p2}, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;-><init>(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    .line 232
    .line 233
    .line 234
    goto :goto_fa

    .line 235
    :cond_ea
    new-instance p2, Lorg/apache/commons/net/ftp/parser/ParserInitializationException;

    .line 236
    .line 237
    const-string v0, "Unknown parser type: "

    .line 238
    .line 239
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object p1

    .line 243
    invoke-direct {p2, p1}, Lorg/apache/commons/net/ftp/parser/ParserInitializationException;-><init>(Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    throw p2

    .line 247
    :cond_f6
    :goto_f6
    invoke-direct {p0, p2}, Lorg/apache/commons/net/ftp/parser/DefaultFTPFileEntryParserFactory;->createOS400FTPEntryParser(Lorg/apache/commons/net/ftp/FTPClientConfig;)Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    .line 248
    .line 249
    .line 250
    move-result-object v1

    .line 251
    :cond_fa
    :goto_fa
    instance-of p1, v1, Lorg/apache/commons/net/ftp/Configurable;

    .line 252
    .line 253
    if-eqz p1, :cond_104

    .line 254
    .line 255
    move-object p1, v1

    .line 256
    check-cast p1, Lorg/apache/commons/net/ftp/Configurable;

    .line 257
    .line 258
    invoke-interface {p1, p2}, Lorg/apache/commons/net/ftp/Configurable;->configure(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    .line 259
    .line 260
    .line 261
    :cond_104
    return-object v1
.end method

.method private createNTFTPEntryParser(Lorg/apache/commons/net/ftp/FTPClientConfig;)Lorg/apache/commons/net/ftp/FTPFileEntryParser;
    .registers 9

    .line 1
    if-eqz p1, :cond_14

    .line 2
    .line 3
    const-string v0, "WINDOWS"

    .line 4
    .line 5
    invoke-virtual {p1}, Lorg/apache/commons/net/ftp/FTPClientConfig;->getServerSystemKey()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_14

    .line 14
    .line 15
    new-instance v0, Lorg/apache/commons/net/ftp/parser/NTFTPEntryParser;

    .line 16
    .line 17
    invoke-direct {v0, p1}, Lorg/apache/commons/net/ftp/parser/NTFTPEntryParser;-><init>(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    .line 18
    .line 19
    .line 20
    return-object v0

    .line 21
    :cond_14
    if-eqz p1, :cond_1c

    .line 22
    .line 23
    new-instance v0, Lorg/apache/commons/net/ftp/FTPClientConfig;

    .line 24
    .line 25
    invoke-direct {v0, p1}, Lorg/apache/commons/net/ftp/FTPClientConfig;-><init>(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    .line 26
    .line 27
    .line 28
    goto :goto_1d

    .line 29
    :cond_1c
    const/4 v0, 0x0

    .line 30
    :goto_1d
    new-instance v1, Lorg/apache/commons/net/ftp/parser/CompositeFileEntryParser;

    .line 31
    .line 32
    new-instance v2, Lorg/apache/commons/net/ftp/parser/NTFTPEntryParser;

    .line 33
    .line 34
    invoke-direct {v2, p1}, Lorg/apache/commons/net/ftp/parser/NTFTPEntryParser;-><init>(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    .line 35
    .line 36
    .line 37
    new-instance p1, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;

    .line 38
    .line 39
    const/4 v3, 0x0

    .line 40
    const/4 v4, 0x1

    .line 41
    if-eqz v0, :cond_38

    .line 42
    .line 43
    const-string v5, "UNIX_LTRIM"

    .line 44
    .line 45
    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPClientConfig;->getServerSystemKey()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    if-eqz v5, :cond_38

    .line 54
    .line 55
    move v5, v4

    .line 56
    goto :goto_39

    .line 57
    :cond_38
    move v5, v3

    .line 58
    :goto_39
    invoke-direct {p1, v0, v5}, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;-><init>(Lorg/apache/commons/net/ftp/FTPClientConfig;Z)V

    .line 59
    .line 60
    .line 61
    const/4 v0, 0x2

    .line 62
    new-array v0, v0, [Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    .line 63
    .line 64
    aput-object v2, v0, v3

    .line 65
    .line 66
    aput-object p1, v0, v4

    .line 67
    .line 68
    invoke-direct {v1, v0}, Lorg/apache/commons/net/ftp/parser/CompositeFileEntryParser;-><init>([Lorg/apache/commons/net/ftp/FTPFileEntryParser;)V

    .line 69
    .line 70
    .line 71
    return-object v1
.end method

.method private createOS400FTPEntryParser(Lorg/apache/commons/net/ftp/FTPClientConfig;)Lorg/apache/commons/net/ftp/FTPFileEntryParser;
    .registers 9

    .line 1
    if-eqz p1, :cond_14

    .line 2
    .line 3
    const-string v0, "OS/400"

    .line 4
    .line 5
    invoke-virtual {p1}, Lorg/apache/commons/net/ftp/FTPClientConfig;->getServerSystemKey()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_14

    .line 14
    .line 15
    new-instance v0, Lorg/apache/commons/net/ftp/parser/OS400FTPEntryParser;

    .line 16
    .line 17
    invoke-direct {v0, p1}, Lorg/apache/commons/net/ftp/parser/OS400FTPEntryParser;-><init>(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    .line 18
    .line 19
    .line 20
    return-object v0

    .line 21
    :cond_14
    if-eqz p1, :cond_1c

    .line 22
    .line 23
    new-instance v0, Lorg/apache/commons/net/ftp/FTPClientConfig;

    .line 24
    .line 25
    invoke-direct {v0, p1}, Lorg/apache/commons/net/ftp/FTPClientConfig;-><init>(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    .line 26
    .line 27
    .line 28
    goto :goto_1d

    .line 29
    :cond_1c
    const/4 v0, 0x0

    .line 30
    :goto_1d
    new-instance v1, Lorg/apache/commons/net/ftp/parser/CompositeFileEntryParser;

    .line 31
    .line 32
    new-instance v2, Lorg/apache/commons/net/ftp/parser/OS400FTPEntryParser;

    .line 33
    .line 34
    invoke-direct {v2, p1}, Lorg/apache/commons/net/ftp/parser/OS400FTPEntryParser;-><init>(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    .line 35
    .line 36
    .line 37
    new-instance p1, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;

    .line 38
    .line 39
    const/4 v3, 0x0

    .line 40
    const/4 v4, 0x1

    .line 41
    if-eqz v0, :cond_38

    .line 42
    .line 43
    const-string v5, "UNIX_LTRIM"

    .line 44
    .line 45
    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPClientConfig;->getServerSystemKey()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    if-eqz v5, :cond_38

    .line 54
    .line 55
    move v5, v4

    .line 56
    goto :goto_39

    .line 57
    :cond_38
    move v5, v3

    .line 58
    :goto_39
    invoke-direct {p1, v0, v5}, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;-><init>(Lorg/apache/commons/net/ftp/FTPClientConfig;Z)V

    .line 59
    .line 60
    .line 61
    const/4 v0, 0x2

    .line 62
    new-array v0, v0, [Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    .line 63
    .line 64
    aput-object v2, v0, v3

    .line 65
    .line 66
    aput-object p1, v0, v4

    .line 67
    .line 68
    invoke-direct {v1, v0}, Lorg/apache/commons/net/ftp/parser/CompositeFileEntryParser;-><init>([Lorg/apache/commons/net/ftp/FTPFileEntryParser;)V

    .line 69
    .line 70
    .line 71
    return-object v1
.end method


# virtual methods
.method public createFileEntryParser(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFileEntryParser;
    .registers 3

    if-eqz p1, :cond_8

    const/4 v0, 0x0

    .line 262
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/net/ftp/parser/DefaultFTPFileEntryParserFactory;->createFileEntryParser(Ljava/lang/String;Lorg/apache/commons/net/ftp/FTPClientConfig;)Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    move-result-object p1

    return-object p1

    .line 263
    :cond_8
    new-instance p1, Lorg/apache/commons/net/ftp/parser/ParserInitializationException;

    const-string v0, "Parser key cannot be null"

    invoke-direct {p1, v0}, Lorg/apache/commons/net/ftp/parser/ParserInitializationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createFileEntryParser(Lorg/apache/commons/net/ftp/FTPClientConfig;)Lorg/apache/commons/net/ftp/FTPFileEntryParser;
    .registers 3

    .line 264
    invoke-virtual {p1}, Lorg/apache/commons/net/ftp/FTPClientConfig;->getServerSystemKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/net/ftp/parser/DefaultFTPFileEntryParserFactory;->createFileEntryParser(Ljava/lang/String;Lorg/apache/commons/net/ftp/FTPClientConfig;)Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    move-result-object p1

    return-object p1
.end method

.method public createMVSEntryParser()Lorg/apache/commons/net/ftp/FTPFileEntryParser;
    .registers 2

    .line 1
    new-instance v0, Lorg/apache/commons/net/ftp/parser/MVSFTPEntryParser;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/apache/commons/net/ftp/parser/MVSFTPEntryParser;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public createNTFTPEntryParser()Lorg/apache/commons/net/ftp/FTPFileEntryParser;
    .registers 2

    const/4 v0, 0x0

    .line 72
    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/parser/DefaultFTPFileEntryParserFactory;->createNTFTPEntryParser(Lorg/apache/commons/net/ftp/FTPClientConfig;)Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    move-result-object v0

    return-object v0
.end method

.method public createNetwareFTPEntryParser()Lorg/apache/commons/net/ftp/FTPFileEntryParser;
    .registers 2

    .line 1
    new-instance v0, Lorg/apache/commons/net/ftp/parser/NetwareFTPEntryParser;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/apache/commons/net/ftp/parser/NetwareFTPEntryParser;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public createOS2FTPEntryParser()Lorg/apache/commons/net/ftp/FTPFileEntryParser;
    .registers 2

    .line 1
    new-instance v0, Lorg/apache/commons/net/ftp/parser/OS2FTPEntryParser;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/apache/commons/net/ftp/parser/OS2FTPEntryParser;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public createOS400FTPEntryParser()Lorg/apache/commons/net/ftp/FTPFileEntryParser;
    .registers 2

    const/4 v0, 0x0

    .line 72
    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/parser/DefaultFTPFileEntryParserFactory;->createOS400FTPEntryParser(Lorg/apache/commons/net/ftp/FTPClientConfig;)Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    move-result-object v0

    return-object v0
.end method

.method public createUnixFTPEntryParser()Lorg/apache/commons/net/ftp/FTPFileEntryParser;
    .registers 2

    .line 1
    new-instance v0, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public createVMSVersioningFTPEntryParser()Lorg/apache/commons/net/ftp/FTPFileEntryParser;
    .registers 2

    .line 1
    new-instance v0, Lorg/apache/commons/net/ftp/parser/VMSVersioningFTPEntryParser;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/apache/commons/net/ftp/parser/VMSVersioningFTPEntryParser;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
