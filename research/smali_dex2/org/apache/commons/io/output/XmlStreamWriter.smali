.class public Lorg/apache/commons/io/output/XmlStreamWriter;
.super Ljava/io/Writer;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/io/output/XmlStreamWriter$Builder;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x2000


# instance fields
.field private charset:Ljava/nio/charset/Charset;

.field private final defaultCharset:Ljava/nio/charset/Charset;

.field private final out:Ljava/io/OutputStream;

.field private prologWriter:Ljava/io/StringWriter;

.field private writer:Ljava/io/Writer;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/io/output/XmlStreamWriter;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 23
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v0, p2}, Lorg/apache/commons/io/output/XmlStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 24
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/io/output/XmlStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 26
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p2, v0}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/io/output/XmlStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    return-void
.end method

.method private constructor <init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/io/StringWriter;

    .line 5
    .line 6
    const/16 v1, 0x2000

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/io/StringWriter;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->prologWriter:Ljava/io/StringWriter;

    .line 12
    .line 13
    iput-object p1, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->out:Ljava/io/OutputStream;

    .line 14
    .line 15
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    iput-object p2, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->defaultCharset:Ljava/nio/charset/Charset;

    .line 19
    .line 20
    return-void
.end method

.method private constructor <init>(Lorg/apache/commons/io/output/XmlStreamWriter$Builder;)V
    .registers 3

    .line 21
    invoke-virtual {p1}, Lorg/apache/commons/io/build/AbstractStreamBuilder;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/commons/io/build/AbstractStreamBuilder;->getCharset()Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/io/output/XmlStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/commons/io/output/XmlStreamWriter$Builder;Lorg/apache/commons/io/output/XmlStreamWriter$1;)V
    .registers 3

    .line 25
    invoke-direct {p0, p1}, Lorg/apache/commons/io/output/XmlStreamWriter;-><init>(Lorg/apache/commons/io/output/XmlStreamWriter$Builder;)V

    return-void
.end method

.method public static builder()Lorg/apache/commons/io/output/XmlStreamWriter$Builder;
    .registers 1

    .line 1
    new-instance v0, Lorg/apache/commons/io/output/XmlStreamWriter$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/apache/commons/io/output/XmlStreamWriter$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private detectEncoding([CII)V
    .registers 10

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->prologWriter:Ljava/io/StringWriter;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    add-int/2addr v1, p3

    .line 12
    const/16 v2, 0x2000

    .line 13
    .line 14
    if-le v1, v2, :cond_16

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    rsub-int v1, v1, 0x2000

    .line 21
    .line 22
    goto :goto_17

    .line 23
    :cond_16
    move v1, p3

    .line 24
    :goto_17
    iget-object v3, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->prologWriter:Ljava/io/StringWriter;

    .line 25
    .line 26
    invoke-virtual {v3, p1, p2, v1}, Ljava/io/StringWriter;->write([CII)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    const/4 v4, 0x5

    .line 34
    if-lt v3, v4, :cond_99

    .line 35
    .line 36
    const/4 v3, 0x0

    .line 37
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    const-string v5, "<?xml"

    .line 42
    .line 43
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-eqz v4, :cond_73

    .line 48
    .line 49
    const-string v4, "?>"

    .line 50
    .line 51
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    if-lez v4, :cond_68

    .line 56
    .line 57
    sget-object v2, Lorg/apache/commons/io/input/XmlStreamReader;->ENCODING_PATTERN:Ljava/util/regex/Pattern;

    .line 58
    .line 59
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    if-eqz v3, :cond_63

    .line 72
    .line 73
    const/4 v3, 0x1

    .line 74
    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 79
    .line 80
    invoke-virtual {v2, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    sub-int/2addr v4, v3

    .line 89
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    iput-object v2, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->charset:Ljava/nio/charset/Charset;

    .line 98
    .line 99
    goto :goto_77

    .line 100
    :cond_63
    iget-object v2, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->defaultCharset:Ljava/nio/charset/Charset;

    .line 101
    .line 102
    iput-object v2, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->charset:Ljava/nio/charset/Charset;

    .line 103
    .line 104
    goto :goto_77

    .line 105
    :cond_68
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    .line 106
    .line 107
    .line 108
    move-result v3

    .line 109
    if-lt v3, v2, :cond_77

    .line 110
    .line 111
    iget-object v2, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->defaultCharset:Ljava/nio/charset/Charset;

    .line 112
    .line 113
    iput-object v2, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->charset:Ljava/nio/charset/Charset;

    .line 114
    .line 115
    goto :goto_77

    .line 116
    :cond_73
    iget-object v2, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->defaultCharset:Ljava/nio/charset/Charset;

    .line 117
    .line 118
    iput-object v2, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->charset:Ljava/nio/charset/Charset;

    .line 119
    .line 120
    :cond_77
    :goto_77
    iget-object v2, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->charset:Ljava/nio/charset/Charset;

    .line 121
    .line 122
    if-eqz v2, :cond_99

    .line 123
    .line 124
    const/4 v2, 0x0

    .line 125
    iput-object v2, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->prologWriter:Ljava/io/StringWriter;

    .line 126
    .line 127
    new-instance v2, Ljava/io/OutputStreamWriter;

    .line 128
    .line 129
    iget-object v3, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->out:Ljava/io/OutputStream;

    .line 130
    .line 131
    iget-object v4, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->charset:Ljava/nio/charset/Charset;

    .line 132
    .line 133
    invoke-direct {v2, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 134
    .line 135
    .line 136
    iput-object v2, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->writer:Ljava/io/Writer;

    .line 137
    .line 138
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    invoke-virtual {v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    if-le p3, v1, :cond_99

    .line 146
    .line 147
    iget-object v0, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->writer:Ljava/io/Writer;

    .line 148
    .line 149
    add-int/2addr p2, v1

    .line 150
    sub-int/2addr p3, v1

    .line 151
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/Writer;->write([CII)V

    .line 152
    .line 153
    .line 154
    :cond_99
    return-void
.end method


# virtual methods
.method public close()V
    .registers 4

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->writer:Ljava/io/Writer;

    .line 2
    .line 3
    if-nez v0, :cond_1c

    .line 4
    .line 5
    iget-object v0, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->defaultCharset:Ljava/nio/charset/Charset;

    .line 6
    .line 7
    iput-object v0, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->charset:Ljava/nio/charset/Charset;

    .line 8
    .line 9
    new-instance v0, Ljava/io/OutputStreamWriter;

    .line 10
    .line 11
    iget-object v1, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->out:Ljava/io/OutputStream;

    .line 12
    .line 13
    iget-object v2, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->charset:Ljava/nio/charset/Charset;

    .line 14
    .line 15
    invoke-direct {v0, v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->writer:Ljava/io/Writer;

    .line 19
    .line 20
    iget-object v1, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->prologWriter:Ljava/io/StringWriter;

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :cond_1c
    iget-object v0, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->writer:Ljava/io/Writer;

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public flush()V
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->writer:Ljava/io/Writer;

    .line 2
    .line 3
    if-eqz v0, :cond_7

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 6
    .line 7
    .line 8
    :cond_7
    return-void
.end method

.method public getDefaultEncoding()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->defaultCharset:Ljava/nio/charset/Charset;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->charset:Ljava/nio/charset/Charset;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public write([CII)V
    .registers 5

    .line 1
    invoke-static {p1, p2, p3}, Lorg/apache/commons/io/IOUtils;->checkFromIndexSize([CII)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->prologWriter:Ljava/io/StringWriter;

    .line 5
    .line 6
    if-eqz v0, :cond_b

    .line 7
    .line 8
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/io/output/XmlStreamWriter;->detectEncoding([CII)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_b
    iget-object v0, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->writer:Ljava/io/Writer;

    .line 13
    .line 14
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/Writer;->write([CII)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
