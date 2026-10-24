.class public Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$TextTable;
.super Ljava/lang/Object;
.source "CommandLine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextTable"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$TextTable$Cell;
    }
.end annotation


# instance fields
.field private final ansi:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;

.field protected final columnValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;",
            ">;"
        }
    .end annotation
.end field

.field public final columns:[Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Column;

.field public indentWrappedLines:I


# direct methods
.method public constructor <init>(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;)V
    .locals 6
    .param p1, "ansi"    # Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "ansi"
        }
    .end annotation

    .line 3928
    const/4 v0, 0x5

    new-array v0, v0, [Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Column;

    new-instance v1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Column;

    sget-object v2, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Column$Overflow;->TRUNCATE:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Column$Overflow;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4, v2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Column;-><init>(IILorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Column$Overflow;)V

    aput-object v1, v0, v4

    new-instance v1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Column;

    sget-object v2, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Column$Overflow;->TRUNCATE:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Column$Overflow;

    invoke-direct {v1, v3, v4, v2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Column;-><init>(IILorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Column$Overflow;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Column;

    sget-object v5, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Column$Overflow;->TRUNCATE:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Column$Overflow;

    invoke-direct {v1, v2, v4, v5}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Column;-><init>(IILorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Column$Overflow;)V

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Column;

    sget-object v3, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Column$Overflow;->SPAN:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Column$Overflow;

    const/16 v4, 0x18

    invoke-direct {v1, v4, v2, v3}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Column;-><init>(IILorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Column$Overflow;)V

    const/4 v3, 0x3

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Column;

    sget-object v3, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Column$Overflow;->WRAP:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Column$Overflow;

    const/16 v4, 0x33

    invoke-direct {v1, v4, v2, v3}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Column;-><init>(IILorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Column$Overflow;)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-direct {p0, p1, v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$TextTable;-><init>(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;[Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Column;)V

    .line 3935
    return-void
.end method

.method public varargs constructor <init>(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;[I)V
    .locals 6
    .param p1, "ansi"    # Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;
    .param p2, "columnWidths"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "ansi",
            "columnWidths"
        }
    .end annotation

    .line 3942
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3909
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$TextTable;->columnValues:Ljava/util/List;

    .line 3912
    const/4 v0, 0x2

    iput v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$TextTable;->indentWrappedLines:I

    .line 3943
    const-string v0, "ansi"

    invoke-static {p1, v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;

    iput-object v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$TextTable;->ansi:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;

    .line 3944
    array-length v0, p2

    new-array v0, v0, [Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Column;

    iput-object v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$TextTable;->columns:[Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Column;

    .line 3945
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 3946
    iget-object v1, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$TextTable;->columns:[Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Column;

    new-instance v2, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Column;

    aget v3, p2, v0

    const/4 v4, 0x0

    array-length v5, p2

    add-int/lit8 v5, v5, -0x1

    if-ne v0, v5, :cond_0

    sget-object v5, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Column$Overflow;->SPAN:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Column$Overflow;

    goto :goto_1

    :cond_0
    sget-object v5, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Column$Overflow;->WRAP:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Column$Overflow;

    :goto_1
    invoke-direct {v2, v3, v4, v5}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Column;-><init>(IILorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Column$Overflow;)V

    aput-object v2, v1, v0

    .line 3945
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3948
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public varargs constructor <init>(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;[Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Column;)V
    .locals 2
    .param p1, "ansi"    # Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;
    .param p2, "columns"    # [Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Column;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "ansi",
            "columns"
        }
    .end annotation

    .line 3952
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3909
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$TextTable;->columnValues:Ljava/util/List;

    .line 3912
    const/4 v0, 0x2

    iput v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$TextTable;->indentWrappedLines:I

    .line 3953
    const-string v0, "ansi"

    invoke-static {p1, v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;

    iput-object v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$TextTable;->ansi:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;

    .line 3954
    const-string v0, "columns"

    invoke-static {p2, v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Column;

    iput-object v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$TextTable;->columns:[Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Column;

    .line 3955
    array-length v0, p2

    if-eqz v0, :cond_0

    .line 3956
    return-void

    .line 3955
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "At least one column is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private copy(Ljava/text/BreakIterator;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;I)I
    .locals 7
    .param p1, "line"    # Ljava/text/BreakIterator;
    .param p2, "text"    # Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;
    .param p3, "columnValue"    # Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;
    .param p4, "offset"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "line",
            "text",
            "columnValue",
            "offset"
        }
    .end annotation

    .line 4079
    invoke-virtual {p2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->plainString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, "\u00ff"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/text/BreakIterator;->setText(Ljava/lang/String;)V

    .line 4080
    const/4 v0, 0x0

    .line 4081
    .local v0, "done":I
    invoke-virtual {p1}, Ljava/text/BreakIterator;->first()I

    move-result v1

    .local v1, "start":I
    invoke-virtual {p1}, Ljava/text/BreakIterator;->next()I

    move-result v2

    .local v2, "end":I
    :goto_0
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 4082
    invoke-virtual {p2, v1, v2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->substring(II)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    move-result-object v3

    .line 4083
    .local v3, "word":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;
    invoke-static {p3}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->access$3300(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;)I

    move-result v4

    add-int v5, p4, v0

    invoke-static {v3}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$TextTable;->length(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;)I

    move-result v6

    add-int/2addr v5, v6

    if-lt v4, v5, :cond_0

    .line 4084
    add-int v4, p4, v0

    invoke-static {v3, p3, v4}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$TextTable;->copy(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;I)I

    move-result v4

    add-int/2addr v0, v4

    .line 4081
    .end local v3    # "word":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;
    move v1, v2

    invoke-virtual {p1}, Ljava/text/BreakIterator;->next()I

    move-result v2

    goto :goto_0

    .line 4089
    .end local v1    # "start":I
    .end local v2    # "end":I
    :cond_0
    if-nez v0, :cond_1

    invoke-static {p2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$TextTable;->length(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;)I

    move-result v1

    invoke-static {p3}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->access$3300(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;)I

    move-result v2

    if-le v1, v2, :cond_1

    .line 4091
    invoke-static {p2, p3, p4}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$TextTable;->copy(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;I)I

    move-result v0

    .line 4093
    :cond_1
    return v0
.end method

.method private static copy(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;I)I
    .locals 2
    .param p0, "value"    # Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;
    .param p1, "destination"    # Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "value",
            "destination",
            "offset"
        }
    .end annotation

    .line 4096
    invoke-static {p0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->access$3100(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;)I

    move-result v0

    invoke-static {p1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->access$3300(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;)I

    move-result v1

    sub-int/2addr v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 4097
    .local v0, "length":I
    invoke-static {p0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->access$3400(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;)I

    move-result v1

    invoke-virtual {p0, v1, v0, p1, p2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->getStyledChars(IILorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;I)V

    .line 4098
    return v0
.end method

.method private static length(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;)I
    .locals 1
    .param p0, "str"    # Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "str"
        }
    .end annotation

    .line 4074
    invoke-static {p0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->access$3100(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public addEmptyRow()V
    .locals 5

    .line 3978
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$TextTable;->columns:[Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Column;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 3979
    iget-object v1, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$TextTable;->columnValues:Ljava/util/List;

    new-instance v2, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    iget-object v3, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$TextTable;->ansi:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$TextTable;->columns:[Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Column;

    aget-object v4, v4, v0

    iget v4, v4, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Column;->width:I

    invoke-direct {v2, v3, v4}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;-><init>(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3978
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3981
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public varargs addRowValues([Ljava/lang/String;)V
    .locals 5
    .param p1, "values"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "values"
        }
    .end annotation

    .line 3986
    array-length v0, p1

    new-array v0, v0, [Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    .line 3987
    .local v0, "array":[Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 3988
    aget-object v2, p1, v1

    if-nez v2, :cond_0

    sget-object v2, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;->EMPTY_TEXT:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    goto :goto_1

    :cond_0
    new-instance v2, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    iget-object v3, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$TextTable;->ansi:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    aget-object v4, p1, v1

    invoke-direct {v2, v3, v4}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;-><init>(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;Ljava/lang/String;)V

    :goto_1
    aput-object v2, v0, v1

    .line 3987
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3990
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {p0, v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$TextTable;->addRowValues([Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;)V

    .line 3991
    return-void
.end method

.method public varargs addRowValues([Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;)V
    .locals 4
    .param p1, "values"    # [Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "values"
        }
    .end annotation

    .line 4000
    array-length v0, p1

    iget-object v1, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$TextTable;->columns:[Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Column;

    array-length v1, v1

    if-gt v0, v1, :cond_3

    .line 4004
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$TextTable;->addEmptyRow()V

    .line 4005
    const/4 v0, 0x0

    .local v0, "col":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 4006
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$TextTable;->rowCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 4007
    .local v1, "row":I
    aget-object v2, p1, v0

    invoke-virtual {p0, v1, v0, v2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$TextTable;->putValue(IILorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$TextTable$Cell;

    move-result-object v2

    .line 4010
    .local v2, "cell":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$TextTable$Cell;
    iget v3, v2, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$TextTable$Cell;->row:I

    if-ne v3, v1, :cond_0

    iget v3, v2, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$TextTable$Cell;->column:I

    if-eq v3, v0, :cond_1

    :cond_0
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    if-eq v0, v3, :cond_1

    .line 4011
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$TextTable;->addEmptyRow()V

    .line 4005
    .end local v1    # "row":I
    .end local v2    # "cell":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$TextTable$Cell;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4014
    .end local v0    # "col":I
    :cond_2
    return-void

    .line 4001
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " values don\'t fit in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$TextTable;->columns:[Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Column;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " columns"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public cellAt(II)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;
    .locals 1
    .param p1, "row"    # I
    .param p2, "col"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "row",
            "col"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3970
    invoke-virtual {p0, p1, p2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$TextTable;->textAt(II)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    move-result-object v0

    return-object v0
.end method

.method public putValue(IILorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$TextTable$Cell;
    .locals 8
    .param p1, "row"    # I
    .param p2, "col"    # I
    .param p3, "value"    # Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "row",
            "col",
            "value"
        }
    .end annotation

    .line 4028
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$TextTable;->rowCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_c

    .line 4031
    if-eqz p3, :cond_b

    invoke-static {p3}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->access$600(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 4032
    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$TextTable;->columns:[Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Column;

    aget-object v0, v0, p2

    .line 4033
    .local v0, "column":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Column;
    iget v2, v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Column;->indent:I

    .line 4034
    .local v2, "indent":I
    sget-object v3, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$1;->$SwitchMap$org$apache$logging$log4j$core$tools$picocli$CommandLine$Help$Column$Overflow:[I

    iget-object v4, v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Column;->overflow:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Column$Overflow;

    invoke-virtual {v4}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Column$Overflow;->ordinal()I

    move-result v4

    aget v3, v3, v4

    if-eq v3, v1, :cond_a

    const/4 v4, 0x2

    if-eq v3, v4, :cond_4

    const/4 v1, 0x3

    if-ne v3, v1, :cond_3

    .line 4059
    invoke-static {}, Ljava/text/BreakIterator;->getLineInstance()Ljava/text/BreakIterator;

    move-result-object v1

    .line 4061
    .local v1, "lineBreakIterator":Ljava/text/BreakIterator;
    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$TextTable;->textAt(II)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    move-result-object v3

    invoke-direct {p0, v1, p3, v3, v2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$TextTable;->copy(Ljava/text/BreakIterator;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;I)I

    move-result v3

    .line 4062
    .local v3, "charsWritten":I
    invoke-virtual {p3, v3}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->substring(I)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    move-result-object p3

    .line 4063
    iget v4, v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Column;->indent:I

    iget v5, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$TextTable;->indentWrappedLines:I

    add-int v2, v4, v5

    .line 4064
    invoke-static {p3}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->access$3100(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;)I

    move-result v4

    if-lez v4, :cond_2

    .line 4065
    add-int/lit8 p1, p1, 0x1

    .line 4066
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$TextTable;->addEmptyRow()V

    .line 4068
    .end local v3    # "charsWritten":I
    :cond_2
    invoke-static {p3}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->access$3100(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;)I

    move-result v3

    if-gtz v3, :cond_1

    .line 4069
    new-instance v3, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$TextTable$Cell;

    invoke-direct {v3, p2, p1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$TextTable$Cell;-><init>(II)V

    return-object v3

    .line 4071
    .end local v1    # "lineBreakIterator":Ljava/text/BreakIterator;
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    iget-object v3, v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Column;->overflow:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Column$Overflow;

    invoke-virtual {v3}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Column$Overflow;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4039
    :cond_4
    move v3, p2

    .line 4041
    .local v3, "startColumn":I
    :cond_5
    iget-object v4, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$TextTable;->columns:[Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Column;

    array-length v4, v4

    sub-int/2addr v4, v1

    if-ne p2, v4, :cond_6

    move v4, v1

    goto :goto_0

    :cond_6
    const/4 v4, 0x0

    .line 4042
    .local v4, "lastColumn":Z
    :goto_0
    if-eqz v4, :cond_7

    .line 4043
    invoke-static {}, Ljava/text/BreakIterator;->getLineInstance()Ljava/text/BreakIterator;

    move-result-object v5

    invoke-virtual {p0, p1, p2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$TextTable;->textAt(II)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    move-result-object v6

    invoke-direct {p0, v5, p3, v6, v2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$TextTable;->copy(Ljava/text/BreakIterator;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;I)I

    move-result v5

    goto :goto_1

    .line 4044
    :cond_7
    invoke-virtual {p0, p1, p2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$TextTable;->textAt(II)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    move-result-object v5

    invoke-static {p3, v5, v2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$TextTable;->copy(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;I)I

    move-result v5

    :goto_1
    nop

    .line 4045
    .local v5, "charsWritten":I
    invoke-virtual {p3, v5}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->substring(I)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    move-result-object p3

    .line 4046
    const/4 v2, 0x0

    .line 4047
    invoke-static {p3}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->access$3100(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;)I

    move-result v6

    if-lez v6, :cond_8

    .line 4048
    add-int/lit8 p2, p2, 0x1

    .line 4050
    :cond_8
    invoke-static {p3}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->access$3100(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;)I

    move-result v6

    if-lez v6, :cond_9

    iget-object v6, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$TextTable;->columns:[Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Column;

    array-length v6, v6

    if-lt p2, v6, :cond_9

    .line 4051
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$TextTable;->addEmptyRow()V

    .line 4052
    add-int/lit8 p1, p1, 0x1

    .line 4053
    move p2, v3

    .line 4054
    iget v6, v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Column;->indent:I

    iget v7, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$TextTable;->indentWrappedLines:I

    add-int/2addr v6, v7

    move v2, v6

    .line 4056
    .end local v4    # "lastColumn":Z
    .end local v5    # "charsWritten":I
    :cond_9
    invoke-static {p3}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->access$3100(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;)I

    move-result v4

    if-gtz v4, :cond_5

    .line 4057
    new-instance v1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$TextTable$Cell;

    invoke-direct {v1, p2, p1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$TextTable$Cell;-><init>(II)V

    return-object v1

    .line 4036
    .end local v3    # "startColumn":I
    :cond_a
    invoke-virtual {p0, p1, p2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$TextTable;->textAt(II)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    move-result-object v1

    invoke-static {p3, v1, v2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$TextTable;->copy(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;I)I

    .line 4037
    new-instance v1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$TextTable$Cell;

    invoke-direct {v1, p2, p1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$TextTable$Cell;-><init>(II)V

    return-object v1

    .line 4031
    .end local v0    # "column":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Column;
    .end local v2    # "indent":I
    :cond_b
    :goto_2
    new-instance v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$TextTable$Cell;

    invoke-direct {v0, p2, p1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$TextTable$Cell;-><init>(II)V

    return-object v0

    .line 4029
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot write to row "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": rowCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$TextTable;->rowCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public rowCount()I
    .locals 2

    .line 3974
    iget-object v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$TextTable;->columnValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$TextTable;->columns:[Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Column;

    array-length v1, v1

    div-int/2addr v0, v1

    return v0
.end method

.method public textAt(II)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;
    .locals 2
    .param p1, "row"    # I
    .param p2, "col"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "row",
            "col"
        }
    .end annotation

    .line 3962
    iget-object v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$TextTable;->columnValues:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$TextTable;->columns:[Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Column;

    array-length v1, v1

    mul-int/2addr v1, p1

    add-int/2addr v1, p2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 4123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$TextTable;->toString(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 7
    .param p1, "text"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "text"
        }
    .end annotation

    .line 4105
    iget-object v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$TextTable;->columns:[Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Column;

    array-length v0, v0

    .line 4106
    .local v0, "columnCount":I
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x50

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 4107
    .local v1, "row":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$TextTable;->columnValues:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 4108
    iget-object v3, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$TextTable;->columnValues:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    .line 4109
    .local v3, "column":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;
    invoke-virtual {v3}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4110
    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$TextTable;->columns:[Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Column;

    rem-int v6, v2, v0

    aget-object v5, v5, v6

    iget v5, v5, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Column;->width:I

    invoke-static {v3}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->access$3100(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;)I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v5}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->access$3500(I)[C

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4111
    rem-int v4, v2, v0

    add-int/lit8 v5, v0, -0x1

    if-ne v4, v5, :cond_1

    .line 4112
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .line 4113
    .local v4, "lastChar":I
    :goto_1
    if-ltz v4, :cond_0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    const/16 v6, 0x20

    if-ne v5, v6, :cond_0

    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 4114
    :cond_0
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4115
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "line.separator"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4116
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4107
    .end local v3    # "column":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;
    .end local v4    # "lastChar":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4120
    .end local v2    # "i":I
    :cond_2
    return-object p1
.end method
