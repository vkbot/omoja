.class public final synthetic Lorg/apache/commons/io/file/b;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lorg/apache/commons/io/function/IOTriFunction;
.implements Lorg/apache/commons/io/function/IOFunction;
.implements Lorg/apache/commons/io/function/IOQuadFunction;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/apache/commons/io/file/b;->b:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 157
    iget v0, p0, Lorg/apache/commons/io/file/b;->b:I

    check-cast p1, Ljava/nio/file/Path;

    sparse-switch v0, :sswitch_data_0

    invoke-static {p1}, Ljava/nio/file/Files;->newDirectoryStream(Ljava/nio/file/Path;)Ljava/nio/file/DirectoryStream;

    move-result-object p1

    return-object p1

    :sswitch_0
    invoke-static {p1}, Ljava/nio/file/Files;->lines(Ljava/nio/file/Path;)Ljava/util/stream/Stream;

    move-result-object p1

    return-object p1

    :sswitch_1
    invoke-static {p1}, Ljava/nio/file/Files;->readAllLines(Ljava/nio/file/Path;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :sswitch_2
    invoke-static {p1}, Ljava/nio/file/Files;->deleteIfExists(Ljava/nio/file/Path;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :sswitch_3
    invoke-static {p1}, Ljava/nio/file/Files;->isHidden(Ljava/nio/file/Path;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :sswitch_4
    invoke-static {p1}, Ljava/nio/file/Files;->probeContentType(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :sswitch_5
    invoke-static {p1}, Ljava/nio/file/Files;->readSymbolicLink(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object p1

    return-object p1

    :sswitch_6
    invoke-static {p1}, Ljava/nio/file/Files;->newBufferedReader(Ljava/nio/file/Path;)Ljava/io/BufferedReader;

    move-result-object p1

    return-object p1

    :sswitch_7
    invoke-static {p1}, Ljava/nio/file/Files;->size(Ljava/nio/file/Path;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :sswitch_8
    invoke-static {p1}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object p1

    return-object p1

    :sswitch_9
    invoke-static {p1}, Ljava/nio/file/Files;->list(Ljava/nio/file/Path;)Ljava/util/stream/Stream;

    move-result-object p1

    return-object p1

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_9
        0x5 -> :sswitch_8
        0x9 -> :sswitch_7
        0xd -> :sswitch_6
        0xf -> :sswitch_5
        0x11 -> :sswitch_4
        0x15 -> :sswitch_3
        0x17 -> :sswitch_2
        0x18 -> :sswitch_1
        0x1a -> :sswitch_0
    .end sparse-switch
.end method

.method public apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/io/file/b;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    :pswitch_0
    check-cast p1, Ljava/nio/file/Path;

    .line 7
    .line 8
    check-cast p2, Ljava/nio/file/Path;

    .line 9
    .line 10
    check-cast p3, [Ljava/nio/file/CopyOption;

    .line 11
    .line 12
    invoke-static {p1, p2, p3}, Ljava/nio/file/Files;->copy(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1

    .line 17
    :pswitch_1
    check-cast p1, Ljava/nio/file/Path;

    .line 18
    .line 19
    check-cast p2, Ljava/nio/file/Path;

    .line 20
    .line 21
    check-cast p3, [Ljava/nio/file/attribute/FileAttribute;

    .line 22
    .line 23
    invoke-static {p1, p2, p3}, Ljava/nio/file/Files;->createSymbolicLink(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    return-object p1

    .line 28
    :pswitch_2
    check-cast p1, Ljava/nio/file/Path;

    .line 29
    .line 30
    check-cast p2, Ljava/util/Set;

    .line 31
    .line 32
    check-cast p3, [Ljava/nio/file/attribute/FileAttribute;

    .line 33
    .line 34
    invoke-static {p1, p2, p3}, Ljava/nio/file/Files;->newByteChannel(Ljava/nio/file/Path;Ljava/util/Set;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/channels/SeekableByteChannel;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    return-object p1

    .line 39
    :pswitch_3
    check-cast p1, Ljava/nio/file/Path;

    .line 40
    .line 41
    check-cast p2, Ljava/lang/Iterable;

    .line 42
    .line 43
    check-cast p3, [Ljava/nio/file/OpenOption;

    .line 44
    .line 45
    invoke-static {p1, p2, p3}, Ljava/nio/file/Files;->write(Ljava/nio/file/Path;Ljava/lang/Iterable;[Ljava/nio/file/OpenOption;)Ljava/nio/file/Path;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    return-object p1

    .line 50
    :pswitch_4
    check-cast p1, Ljava/nio/file/Path;

    .line 51
    .line 52
    check-cast p2, Ljava/nio/charset/Charset;

    .line 53
    .line 54
    check-cast p3, [Ljava/nio/file/OpenOption;

    .line 55
    .line 56
    invoke-static {p1, p2, p3}, Ljava/nio/file/Files;->newBufferedWriter(Ljava/nio/file/Path;Ljava/nio/charset/Charset;[Ljava/nio/file/OpenOption;)Ljava/io/BufferedWriter;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    return-object p1

    .line 61
    :pswitch_5
    check-cast p1, Ljava/lang/String;

    .line 62
    .line 63
    check-cast p2, Ljava/lang/String;

    .line 64
    .line 65
    check-cast p3, [Ljava/nio/file/attribute/FileAttribute;

    .line 66
    .line 67
    invoke-static {p1, p2, p3}, Ljava/nio/file/Files;->createTempFile(Ljava/lang/String;Ljava/lang/String;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    return-object p1

    .line 72
    :pswitch_6
    check-cast p1, Ljava/nio/file/Path;

    .line 73
    .line 74
    check-cast p2, Ljava/lang/Class;

    .line 75
    .line 76
    check-cast p3, [Ljava/nio/file/LinkOption;

    .line 77
    .line 78
    invoke-static {p1, p2, p3}, Ljava/nio/file/Files;->readAttributes(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    return-object p1

    .line 83
    :pswitch_7
    check-cast p1, Ljava/nio/file/Path;

    .line 84
    .line 85
    check-cast p2, Ljava/nio/file/Path;

    .line 86
    .line 87
    check-cast p3, [Ljava/nio/file/CopyOption;

    .line 88
    .line 89
    invoke-static {p1, p2, p3}, Ljava/nio/file/Files;->move(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    return-object p1

    .line 94
    :pswitch_8
    check-cast p1, Ljava/nio/file/Path;

    .line 95
    .line 96
    check-cast p2, Ljava/lang/String;

    .line 97
    .line 98
    check-cast p3, [Ljava/nio/file/LinkOption;

    .line 99
    .line 100
    invoke-static {p1, p2, p3}, Ljava/nio/file/Files;->getAttribute(Ljava/nio/file/Path;Ljava/lang/String;[Ljava/nio/file/LinkOption;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    return-object p1

    .line 105
    :pswitch_9
    check-cast p1, Ljava/nio/file/Path;

    .line 106
    .line 107
    check-cast p2, Ljava/lang/Integer;

    .line 108
    .line 109
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 110
    .line 111
    .line 112
    move-result p2

    .line 113
    check-cast p3, [Ljava/nio/file/FileVisitOption;

    .line 114
    .line 115
    invoke-static {p1, p2, p3}, Ljava/nio/file/Files;->walk(Ljava/nio/file/Path;I[Ljava/nio/file/FileVisitOption;)Ljava/util/stream/Stream;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    return-object p1

    .line 120
    :pswitch_a
    check-cast p1, Ljava/nio/file/Path;

    .line 121
    .line 122
    check-cast p2, [B

    .line 123
    .line 124
    check-cast p3, [Ljava/nio/file/OpenOption;

    .line 125
    .line 126
    invoke-static {p1, p2, p3}, Ljava/nio/file/Files;->write(Ljava/nio/file/Path;[B[Ljava/nio/file/OpenOption;)Ljava/nio/file/Path;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    return-object p1

    .line 131
    :pswitch_b
    check-cast p1, Ljava/io/InputStream;

    .line 132
    .line 133
    check-cast p2, Ljava/nio/file/Path;

    .line 134
    .line 135
    check-cast p3, [Ljava/nio/file/CopyOption;

    .line 136
    .line 137
    invoke-static {p1, p2, p3}, Ljava/nio/file/Files;->copy(Ljava/io/InputStream;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)J

    .line 138
    .line 139
    .line 140
    move-result-wide p1

    .line 141
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    return-object p1

    .line 146
    :pswitch_c
    check-cast p1, Ljava/nio/file/Path;

    .line 147
    .line 148
    check-cast p2, Ljava/lang/String;

    .line 149
    .line 150
    check-cast p3, [Ljava/nio/file/attribute/FileAttribute;

    .line 151
    .line 152
    invoke-static {p1, p2, p3}, Ljava/nio/file/Files;->createTempDirectory(Ljava/nio/file/Path;Ljava/lang/String;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    return-object p1

    .line 157
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 158
    iget v0, p0, Lorg/apache/commons/io/file/b;->b:I

    check-cast p1, Ljava/nio/file/Path;

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    check-cast p2, Ljava/util/Set;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    check-cast p4, Ljava/nio/file/FileVisitor;

    invoke-static {p1, p2, p3, p4}, Ljava/nio/file/Files;->walkFileTree(Ljava/nio/file/Path;Ljava/util/Set;ILjava/nio/file/FileVisitor;)Ljava/nio/file/Path;

    move-result-object p1

    return-object p1

    :pswitch_1
    check-cast p2, Ljava/lang/String;

    check-cast p3, Ljava/lang/String;

    check-cast p4, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {p1, p2, p3, p4}, Ljava/nio/file/Files;->createTempFile(Ljava/nio/file/Path;Ljava/lang/String;Ljava/lang/String;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    move-result-object p1

    return-object p1

    :pswitch_2
    check-cast p2, Ljava/lang/Iterable;

    check-cast p3, Ljava/nio/charset/Charset;

    check-cast p4, [Ljava/nio/file/OpenOption;

    invoke-static {p1, p2, p3, p4}, Ljava/nio/file/Files;->write(Ljava/nio/file/Path;Ljava/lang/Iterable;Ljava/nio/charset/Charset;[Ljava/nio/file/OpenOption;)Ljava/nio/file/Path;

    move-result-object p1

    return-object p1

    :pswitch_3
    check-cast p2, Ljava/lang/String;

    check-cast p4, [Ljava/nio/file/LinkOption;

    invoke-static {p1, p2, p3, p4}, Ljava/nio/file/Files;->setAttribute(Ljava/nio/file/Path;Ljava/lang/String;Ljava/lang/Object;[Ljava/nio/file/LinkOption;)Ljava/nio/file/Path;

    move-result-object p1

    return-object p1

    :pswitch_4
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    check-cast p3, Ljava/util/function/BiPredicate;

    check-cast p4, [Ljava/nio/file/FileVisitOption;

    invoke-static {p1, p2, p3, p4}, Ljava/nio/file/Files;->find(Ljava/nio/file/Path;ILjava/util/function/BiPredicate;[Ljava/nio/file/FileVisitOption;)Ljava/util/stream/Stream;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
