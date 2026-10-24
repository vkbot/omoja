.class public Lorg/apache/logging/log4j/core/util/StringBuilderWriter;
.super Ljava/io/Writer;
.source "StringBuilderWriter.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x209fdc77c8b2a69L


# instance fields
.field private final builder:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/util/StringBuilderWriter;->builder:Ljava/lang/StringBuilder;

    .line 47
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "capacity"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "capacity"
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/util/StringBuilderWriter;->builder:Ljava/lang/StringBuilder;

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "builder"
        }
    .end annotation

    .line 65
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 66
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    iput-object v0, p0, Lorg/apache/logging/log4j/core/util/StringBuilderWriter;->builder:Ljava/lang/StringBuilder;

    .line 67
    return-void
.end method


# virtual methods
.method public append(C)Ljava/io/Writer;
    .locals 1
    .param p1, "value"    # C
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "value"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/StringBuilderWriter;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 78
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    .locals 1
    .param p1, "value"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "value"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/StringBuilderWriter;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 90
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;II)Ljava/io/Writer;
    .locals 1
    .param p1, "value"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "value",
            "start",
            "end"
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/StringBuilderWriter;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 104
    return-object p0
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/core/util/StringBuilderWriter;->append(C)Ljava/io/Writer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/core/util/StringBuilderWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "value",
            "start",
            "end"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/logging/log4j/core/util/StringBuilderWriter;->append(Ljava/lang/CharSequence;II)Ljava/io/Writer;

    move-result-object p1

    return-object p1
.end method

.method public close()V
    .locals 0

    .line 113
    return-void
.end method

.method public flush()V
    .locals 0

    .line 121
    return-void
.end method

.method public getBuilder()Ljava/lang/StringBuilder;
    .locals 1

    .line 156
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/StringBuilderWriter;->builder:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 166
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/StringBuilderWriter;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "value"
        }
    .end annotation

    .line 131
    if-eqz p1, :cond_0

    .line 132
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/StringBuilderWriter;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    :cond_0
    return-void
.end method

.method public write([CII)V
    .locals 1
    .param p1, "value"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "value",
            "offset",
            "length"
        }
    .end annotation

    .line 145
    if-eqz p1, :cond_0

    .line 146
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/StringBuilderWriter;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 148
    :cond_0
    return-void
.end method
