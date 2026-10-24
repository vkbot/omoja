.class public Lorg/apache/mina/util/Transform;
.super Ljava/lang/Object;
.source "Transform.java"


# static fields
.field private static final CDATA_EMBEDED_END:Ljava/lang/String; = "]]>]]&gt;<![CDATA["

.field private static final CDATA_END:Ljava/lang/String; = "]]>"

.field private static final CDATA_END_LEN:I

.field private static final CDATA_PSEUDO_END:Ljava/lang/String; = "]]&gt;"

.field private static final CDATA_START:Ljava/lang/String; = "<![CDATA["


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    const-string v0, "]]>"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lorg/apache/mina/util/Transform;->CDATA_END_LEN:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendEscapingCDATA(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 4
    .param p0, "buf"    # Ljava/lang/StringBuilder;
    .param p1, "str"    # Ljava/lang/String;

    .line 109
    if-eqz p1, :cond_3

    .line 110
    const-string v0, "]]>"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 112
    .local v1, "end":I
    if-gez v1, :cond_0

    .line 113
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 115
    :cond_0
    const/4 v2, 0x0

    .line 117
    .local v2, "start":I
    :goto_0
    const/4 v3, -0x1

    if-le v1, v3, :cond_2

    .line 118
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    const-string v3, "]]>]]&gt;<![CDATA["

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    sget v3, Lorg/apache/mina/util/Transform;->CDATA_END_LEN:I

    add-int v2, v1, v3

    .line 122
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 123
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    goto :goto_0

    .line 125
    :cond_1
    return-void

    .line 129
    :cond_2
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .end local v1    # "end":I
    .end local v2    # "start":I
    :cond_3
    :goto_1
    return-void
.end method

.method public static escapeTags(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "input"    # Ljava/lang/String;

    .line 61
    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 65
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x6

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 68
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 70
    .local v1, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_5

    .line 71
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 73
    .local v3, "ch":C
    const/16 v4, 0x22

    if-eq v3, v4, :cond_4

    const/16 v4, 0x26

    if-eq v3, v4, :cond_3

    const/16 v4, 0x3c

    if-eq v3, v4, :cond_2

    const/16 v4, 0x3e

    if-eq v3, v4, :cond_1

    .line 92
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 80
    :cond_1
    const-string v4, "&gt;"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    goto :goto_1

    .line 76
    :cond_2
    const-string v4, "&lt;"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    goto :goto_1

    .line 84
    :cond_3
    const-string v4, "&amp;"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    goto :goto_1

    .line 88
    :cond_4
    const-string v4, "&quot;"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    nop

    .line 70
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 96
    .end local v2    # "i":I
    .end local v3    # "ch":C
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 62
    .end local v0    # "buf":Ljava/lang/StringBuilder;
    .end local v1    # "len":I
    :cond_6
    :goto_2
    return-object p0
.end method

.method public static getThrowableStrRep(Ljava/lang/Throwable;)[Ljava/lang/String;
    .locals 6
    .param p0, "throwable"    # Ljava/lang/Throwable;

    .line 140
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 141
    .local v0, "sw":Ljava/io/StringWriter;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 142
    .local v1, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 143
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 144
    new-instance v2, Ljava/io/LineNumberReader;

    new-instance v3, Ljava/io/StringReader;

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V

    .line 145
    .local v2, "reader":Ljava/io/LineNumberReader;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 148
    .local v3, "lines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual {v2}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 150
    .local v4, "line":Ljava/lang/String;
    :goto_0
    if-eqz v4, :cond_0

    .line 151
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    invoke-virtual {v2}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v5

    goto :goto_0

    .line 156
    .end local v4    # "line":Ljava/lang/String;
    :cond_0
    goto :goto_1

    .line 154
    :catch_0
    move-exception v4

    .line 155
    .local v4, "ex":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    .end local v4    # "ex":Ljava/io/IOException;
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    .line 159
    .local v4, "rep":[Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 161
    return-object v4
.end method
