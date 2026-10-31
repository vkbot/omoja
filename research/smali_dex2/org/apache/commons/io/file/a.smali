.class public final synthetic Lorg/apache/commons/io/file/a;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lorg/apache/commons/io/function/IOBiFunction;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    .line 1
    iput p1, p0, Lorg/apache/commons/io/file/a;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    iget v0, p0, Lorg/apache/commons/io/file/a;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_e6

    .line 4
    .line 5
    .line 6
    check-cast p1, Ljava/nio/file/Path;

    .line 7
    .line 8
    check-cast p2, [Ljava/nio/file/OpenOption;

    .line 9
    .line 10
    invoke-static {p1, p2}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1

    .line 15
    :pswitch_e
    check-cast p1, Ljava/nio/file/Path;

    .line 16
    .line 17
    check-cast p2, [Ljava/nio/file/attribute/FileAttribute;

    .line 18
    .line 19
    invoke-static {p1, p2}, Ljava/nio/file/Files;->createDirectory(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    return-object p1

    .line 24
    :pswitch_17
    check-cast p1, Ljava/nio/file/Path;

    .line 25
    .line 26
    check-cast p2, [Ljava/nio/file/OpenOption;

    .line 27
    .line 28
    invoke-static {p1, p2}, Ljava/nio/file/Files;->newBufferedWriter(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/BufferedWriter;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    return-object p1

    .line 33
    :pswitch_20
    check-cast p1, Ljava/nio/file/Path;

    .line 34
    .line 35
    check-cast p2, [Ljava/nio/file/LinkOption;

    .line 36
    .line 37
    invoke-static {p1, p2}, Ljava/nio/file/Files;->getLastModifiedTime(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileTime;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    return-object p1

    .line 42
    :pswitch_29
    check-cast p1, Ljava/nio/file/Path;

    .line 43
    .line 44
    check-cast p2, Ljava/nio/file/Path;

    .line 45
    .line 46
    invoke-static {p1, p2}, Ljava/nio/file/Files;->isSameFile(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    return-object p1

    .line 55
    :pswitch_36
    check-cast p1, Ljava/lang/String;

    .line 56
    .line 57
    check-cast p2, [Ljava/nio/file/attribute/FileAttribute;

    .line 58
    .line 59
    invoke-static {p1, p2}, Ljava/nio/file/Files;->createTempDirectory(Ljava/lang/String;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    return-object p1

    .line 64
    :pswitch_3f
    check-cast p1, Ljava/nio/file/Path;

    .line 65
    .line 66
    check-cast p2, [Ljava/nio/file/FileVisitOption;

    .line 67
    .line 68
    invoke-static {p1, p2}, Ljava/nio/file/Files;->walk(Ljava/nio/file/Path;[Ljava/nio/file/FileVisitOption;)Ljava/util/stream/Stream;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    return-object p1

    .line 73
    :pswitch_48
    check-cast p1, Ljava/nio/file/Path;

    .line 74
    .line 75
    check-cast p2, [Ljava/nio/file/OpenOption;

    .line 76
    .line 77
    invoke-static {p1, p2}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    return-object p1

    .line 82
    :pswitch_51
    check-cast p1, Ljava/nio/file/Path;

    .line 83
    .line 84
    check-cast p2, [Ljava/nio/file/attribute/FileAttribute;

    .line 85
    .line 86
    invoke-static {p1, p2}, Ljava/nio/file/Files;->createFile(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    return-object p1

    .line 91
    :pswitch_5a
    check-cast p1, Ljava/nio/file/Path;

    .line 92
    .line 93
    check-cast p2, Ljava/util/Set;

    .line 94
    .line 95
    invoke-static {p1, p2}, Ljava/nio/file/Files;->setPosixFilePermissions(Ljava/nio/file/Path;Ljava/util/Set;)Ljava/nio/file/Path;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    return-object p1

    .line 100
    :pswitch_63
    check-cast p1, Ljava/nio/file/Path;

    .line 101
    .line 102
    check-cast p2, [Ljava/nio/file/OpenOption;

    .line 103
    .line 104
    invoke-static {p1, p2}, Ljava/nio/file/Files;->newByteChannel(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/nio/channels/SeekableByteChannel;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    return-object p1

    .line 109
    :pswitch_6c
    check-cast p1, Ljava/nio/file/Path;

    .line 110
    .line 111
    check-cast p2, Ljava/nio/charset/Charset;

    .line 112
    .line 113
    invoke-static {p1, p2}, Ljava/nio/file/Files;->lines(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Ljava/util/stream/Stream;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    return-object p1

    .line 118
    :pswitch_75
    check-cast p1, Ljava/nio/file/Path;

    .line 119
    .line 120
    check-cast p2, Ljava/nio/file/attribute/UserPrincipal;

    .line 121
    .line 122
    invoke-static {p1, p2}, Ljava/nio/file/Files;->setOwner(Ljava/nio/file/Path;Ljava/nio/file/attribute/UserPrincipal;)Ljava/nio/file/Path;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    return-object p1

    .line 127
    :pswitch_7e
    check-cast p1, Ljava/nio/file/Path;

    .line 128
    .line 129
    check-cast p2, Ljava/nio/charset/Charset;

    .line 130
    .line 131
    invoke-static {p1, p2}, Ljava/nio/file/Files;->readAllLines(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Ljava/util/List;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    return-object p1

    .line 136
    :pswitch_87
    check-cast p1, Ljava/nio/file/Path;

    .line 137
    .line 138
    check-cast p2, [Ljava/nio/file/LinkOption;

    .line 139
    .line 140
    invoke-static {p1, p2}, Ljava/nio/file/Files;->getOwner(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/UserPrincipal;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    return-object p1

    .line 145
    :pswitch_90
    check-cast p1, Ljava/nio/file/Path;

    .line 146
    .line 147
    check-cast p2, Ljava/nio/file/attribute/FileTime;

    .line 148
    .line 149
    invoke-static {p1, p2}, Ljava/nio/file/Files;->setLastModifiedTime(Ljava/nio/file/Path;Ljava/nio/file/attribute/FileTime;)Ljava/nio/file/Path;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    return-object p1

    .line 154
    :pswitch_99
    check-cast p1, Ljava/nio/file/Path;

    .line 155
    .line 156
    check-cast p2, Ljava/lang/String;

    .line 157
    .line 158
    invoke-static {p1, p2}, Ljava/nio/file/Files;->newDirectoryStream(Ljava/nio/file/Path;Ljava/lang/String;)Ljava/nio/file/DirectoryStream;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    return-object p1

    .line 163
    :pswitch_a2
    check-cast p1, Ljava/nio/file/Path;

    .line 164
    .line 165
    check-cast p2, [Ljava/nio/file/LinkOption;

    .line 166
    .line 167
    invoke-static {p1, p2}, Ljava/nio/file/Files;->getPosixFilePermissions(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/util/Set;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    return-object p1

    .line 172
    :pswitch_ab
    check-cast p1, Ljava/nio/file/Path;

    .line 173
    .line 174
    check-cast p2, Ljava/nio/file/DirectoryStream$Filter;

    .line 175
    .line 176
    invoke-static {p1, p2}, Ljava/nio/file/Files;->newDirectoryStream(Ljava/nio/file/Path;Ljava/nio/file/DirectoryStream$Filter;)Ljava/nio/file/DirectoryStream;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    return-object p1

    .line 181
    :pswitch_b4
    check-cast p1, Ljava/nio/file/Path;

    .line 182
    .line 183
    check-cast p2, Ljava/nio/charset/Charset;

    .line 184
    .line 185
    invoke-static {p1, p2}, Ljava/nio/file/Files;->newBufferedReader(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Ljava/io/BufferedReader;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    return-object p1

    .line 190
    :pswitch_bd
    check-cast p1, Ljava/nio/file/Path;

    .line 191
    .line 192
    check-cast p2, Ljava/io/OutputStream;

    .line 193
    .line 194
    invoke-static {p1, p2}, Ljava/nio/file/Files;->copy(Ljava/nio/file/Path;Ljava/io/OutputStream;)J

    .line 195
    .line 196
    .line 197
    move-result-wide p1

    .line 198
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    return-object p1

    .line 203
    :pswitch_ca
    check-cast p1, Ljava/nio/file/Path;

    .line 204
    .line 205
    check-cast p2, Ljava/nio/file/Path;

    .line 206
    .line 207
    invoke-static {p1, p2}, Ljava/nio/file/Files;->createLink(Ljava/nio/file/Path;Ljava/nio/file/Path;)Ljava/nio/file/Path;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    return-object p1

    .line 212
    :pswitch_d3
    check-cast p1, Ljava/nio/file/Path;

    .line 213
    .line 214
    check-cast p2, [Ljava/nio/file/attribute/FileAttribute;

    .line 215
    .line 216
    invoke-static {p1, p2}, Ljava/nio/file/Files;->createDirectories(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    .line 217
    .line 218
    .line 219
    move-result-object p1

    .line 220
    return-object p1

    .line 221
    :pswitch_dc
    check-cast p1, Ljava/nio/file/Path;

    .line 222
    .line 223
    check-cast p2, Ljava/nio/file/FileVisitor;

    .line 224
    .line 225
    invoke-static {p1, p2}, Ljava/nio/file/Files;->walkFileTree(Ljava/nio/file/Path;Ljava/nio/file/FileVisitor;)Ljava/nio/file/Path;

    .line 226
    .line 227
    .line 228
    move-result-object p1

    .line 229
    return-object p1

    .line 230
    nop

    .line 231
    :pswitch_data_e6
    .packed-switch 0x0
        :pswitch_dc
        :pswitch_d3
        :pswitch_ca
        :pswitch_bd
        :pswitch_b4
        :pswitch_ab
        :pswitch_a2
        :pswitch_99
        :pswitch_90
        :pswitch_87
        :pswitch_7e
        :pswitch_75
        :pswitch_6c
        :pswitch_63
        :pswitch_5a
        :pswitch_51
        :pswitch_48
        :pswitch_3f
        :pswitch_36
        :pswitch_29
        :pswitch_20
        :pswitch_17
        :pswitch_e
    .end packed-switch
.end method
