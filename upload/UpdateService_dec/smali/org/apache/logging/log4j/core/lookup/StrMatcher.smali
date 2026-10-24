.class public abstract Lorg/apache/logging/log4j/core/lookup/StrMatcher;
.super Ljava/lang/Object;
.source "StrMatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/core/lookup/StrMatcher$TrimMatcher;,
        Lorg/apache/logging/log4j/core/lookup/StrMatcher$NoMatcher;,
        Lorg/apache/logging/log4j/core/lookup/StrMatcher$StringMatcher;,
        Lorg/apache/logging/log4j/core/lookup/StrMatcher$CharMatcher;,
        Lorg/apache/logging/log4j/core/lookup/StrMatcher$CharSetMatcher;
    }
.end annotation


# static fields
.field private static final COMMA_MATCHER:Lorg/apache/logging/log4j/core/lookup/StrMatcher;

.field private static final DOUBLE_QUOTE_MATCHER:Lorg/apache/logging/log4j/core/lookup/StrMatcher;

.field private static final NONE_MATCHER:Lorg/apache/logging/log4j/core/lookup/StrMatcher;

.field private static final QUOTE_MATCHER:Lorg/apache/logging/log4j/core/lookup/StrMatcher;

.field private static final SINGLE_QUOTE_MATCHER:Lorg/apache/logging/log4j/core/lookup/StrMatcher;

.field private static final SPACE_MATCHER:Lorg/apache/logging/log4j/core/lookup/StrMatcher;

.field private static final SPLIT_MATCHER:Lorg/apache/logging/log4j/core/lookup/StrMatcher;

.field private static final TAB_MATCHER:Lorg/apache/logging/log4j/core/lookup/StrMatcher;

.field private static final TRIM_MATCHER:Lorg/apache/logging/log4j/core/lookup/StrMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    new-instance v0, Lorg/apache/logging/log4j/core/lookup/StrMatcher$CharMatcher;

    const/16 v1, 0x2c

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/core/lookup/StrMatcher$CharMatcher;-><init>(C)V

    sput-object v0, Lorg/apache/logging/log4j/core/lookup/StrMatcher;->COMMA_MATCHER:Lorg/apache/logging/log4j/core/lookup/StrMatcher;

    .line 40
    new-instance v0, Lorg/apache/logging/log4j/core/lookup/StrMatcher$CharMatcher;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/core/lookup/StrMatcher$CharMatcher;-><init>(C)V

    sput-object v0, Lorg/apache/logging/log4j/core/lookup/StrMatcher;->TAB_MATCHER:Lorg/apache/logging/log4j/core/lookup/StrMatcher;

    .line 44
    new-instance v0, Lorg/apache/logging/log4j/core/lookup/StrMatcher$CharMatcher;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/core/lookup/StrMatcher$CharMatcher;-><init>(C)V

    sput-object v0, Lorg/apache/logging/log4j/core/lookup/StrMatcher;->SPACE_MATCHER:Lorg/apache/logging/log4j/core/lookup/StrMatcher;

    .line 49
    new-instance v0, Lorg/apache/logging/log4j/core/lookup/StrMatcher$CharSetMatcher;

    const-string v1, " \t\n\r\u000c"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/core/lookup/StrMatcher$CharSetMatcher;-><init>([C)V

    sput-object v0, Lorg/apache/logging/log4j/core/lookup/StrMatcher;->SPLIT_MATCHER:Lorg/apache/logging/log4j/core/lookup/StrMatcher;

    .line 53
    new-instance v0, Lorg/apache/logging/log4j/core/lookup/StrMatcher$TrimMatcher;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/lookup/StrMatcher$TrimMatcher;-><init>()V

    sput-object v0, Lorg/apache/logging/log4j/core/lookup/StrMatcher;->TRIM_MATCHER:Lorg/apache/logging/log4j/core/lookup/StrMatcher;

    .line 57
    new-instance v0, Lorg/apache/logging/log4j/core/lookup/StrMatcher$CharMatcher;

    const/16 v1, 0x27

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/core/lookup/StrMatcher$CharMatcher;-><init>(C)V

    sput-object v0, Lorg/apache/logging/log4j/core/lookup/StrMatcher;->SINGLE_QUOTE_MATCHER:Lorg/apache/logging/log4j/core/lookup/StrMatcher;

    .line 61
    new-instance v0, Lorg/apache/logging/log4j/core/lookup/StrMatcher$CharMatcher;

    const/16 v1, 0x22

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/core/lookup/StrMatcher$CharMatcher;-><init>(C)V

    sput-object v0, Lorg/apache/logging/log4j/core/lookup/StrMatcher;->DOUBLE_QUOTE_MATCHER:Lorg/apache/logging/log4j/core/lookup/StrMatcher;

    .line 65
    new-instance v0, Lorg/apache/logging/log4j/core/lookup/StrMatcher$CharSetMatcher;

    const-string v1, "\'\""

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/core/lookup/StrMatcher$CharSetMatcher;-><init>([C)V

    sput-object v0, Lorg/apache/logging/log4j/core/lookup/StrMatcher;->QUOTE_MATCHER:Lorg/apache/logging/log4j/core/lookup/StrMatcher;

    .line 69
    new-instance v0, Lorg/apache/logging/log4j/core/lookup/StrMatcher$NoMatcher;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/lookup/StrMatcher$NoMatcher;-><init>()V

    sput-object v0, Lorg/apache/logging/log4j/core/lookup/StrMatcher;->NONE_MATCHER:Lorg/apache/logging/log4j/core/lookup/StrMatcher;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    return-void
.end method

.method public static charMatcher(C)Lorg/apache/logging/log4j/core/lookup/StrMatcher;
    .locals 1
    .param p0, "ch"    # C
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "ch"
        }
    .end annotation

    .line 166
    new-instance v0, Lorg/apache/logging/log4j/core/lookup/StrMatcher$CharMatcher;

    invoke-direct {v0, p0}, Lorg/apache/logging/log4j/core/lookup/StrMatcher$CharMatcher;-><init>(C)V

    return-object v0
.end method

.method public static charSetMatcher(Ljava/lang/String;)Lorg/apache/logging/log4j/core/lookup/StrMatcher;
    .locals 2
    .param p0, "chars"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "chars"
        }
    .end annotation

    .line 192
    invoke-static {p0}, Lorg/apache/logging/log4j/util/Strings;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    sget-object v0, Lorg/apache/logging/log4j/core/lookup/StrMatcher;->NONE_MATCHER:Lorg/apache/logging/log4j/core/lookup/StrMatcher;

    return-object v0

    .line 195
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 196
    new-instance v0, Lorg/apache/logging/log4j/core/lookup/StrMatcher$CharMatcher;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/core/lookup/StrMatcher$CharMatcher;-><init>(C)V

    return-object v0

    .line 198
    :cond_1
    new-instance v0, Lorg/apache/logging/log4j/core/lookup/StrMatcher$CharSetMatcher;

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/core/lookup/StrMatcher$CharSetMatcher;-><init>([C)V

    return-object v0
.end method

.method public static charSetMatcher([C)Lorg/apache/logging/log4j/core/lookup/StrMatcher;
    .locals 2
    .param p0, "chars"    # [C
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "chars"
        }
    .end annotation

    .line 176
    if-eqz p0, :cond_2

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    .line 179
    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 180
    new-instance v0, Lorg/apache/logging/log4j/core/lookup/StrMatcher$CharMatcher;

    const/4 v1, 0x0

    aget-char v1, p0, v1

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/core/lookup/StrMatcher$CharMatcher;-><init>(C)V

    return-object v0

    .line 182
    :cond_1
    new-instance v0, Lorg/apache/logging/log4j/core/lookup/StrMatcher$CharSetMatcher;

    invoke-direct {v0, p0}, Lorg/apache/logging/log4j/core/lookup/StrMatcher$CharSetMatcher;-><init>([C)V

    return-object v0

    .line 177
    :cond_2
    :goto_0
    sget-object v0, Lorg/apache/logging/log4j/core/lookup/StrMatcher;->NONE_MATCHER:Lorg/apache/logging/log4j/core/lookup/StrMatcher;

    return-object v0
.end method

.method public static commaMatcher()Lorg/apache/logging/log4j/core/lookup/StrMatcher;
    .locals 1

    .line 83
    sget-object v0, Lorg/apache/logging/log4j/core/lookup/StrMatcher;->COMMA_MATCHER:Lorg/apache/logging/log4j/core/lookup/StrMatcher;

    return-object v0
.end method

.method public static doubleQuoteMatcher()Lorg/apache/logging/log4j/core/lookup/StrMatcher;
    .locals 1

    .line 138
    sget-object v0, Lorg/apache/logging/log4j/core/lookup/StrMatcher;->DOUBLE_QUOTE_MATCHER:Lorg/apache/logging/log4j/core/lookup/StrMatcher;

    return-object v0
.end method

.method public static noneMatcher()Lorg/apache/logging/log4j/core/lookup/StrMatcher;
    .locals 1

    .line 156
    sget-object v0, Lorg/apache/logging/log4j/core/lookup/StrMatcher;->NONE_MATCHER:Lorg/apache/logging/log4j/core/lookup/StrMatcher;

    return-object v0
.end method

.method public static quoteMatcher()Lorg/apache/logging/log4j/core/lookup/StrMatcher;
    .locals 1

    .line 147
    sget-object v0, Lorg/apache/logging/log4j/core/lookup/StrMatcher;->QUOTE_MATCHER:Lorg/apache/logging/log4j/core/lookup/StrMatcher;

    return-object v0
.end method

.method public static singleQuoteMatcher()Lorg/apache/logging/log4j/core/lookup/StrMatcher;
    .locals 1

    .line 129
    sget-object v0, Lorg/apache/logging/log4j/core/lookup/StrMatcher;->SINGLE_QUOTE_MATCHER:Lorg/apache/logging/log4j/core/lookup/StrMatcher;

    return-object v0
.end method

.method public static spaceMatcher()Lorg/apache/logging/log4j/core/lookup/StrMatcher;
    .locals 1

    .line 101
    sget-object v0, Lorg/apache/logging/log4j/core/lookup/StrMatcher;->SPACE_MATCHER:Lorg/apache/logging/log4j/core/lookup/StrMatcher;

    return-object v0
.end method

.method public static splitMatcher()Lorg/apache/logging/log4j/core/lookup/StrMatcher;
    .locals 1

    .line 111
    sget-object v0, Lorg/apache/logging/log4j/core/lookup/StrMatcher;->SPLIT_MATCHER:Lorg/apache/logging/log4j/core/lookup/StrMatcher;

    return-object v0
.end method

.method public static stringMatcher(Ljava/lang/String;)Lorg/apache/logging/log4j/core/lookup/StrMatcher;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "str"
        }
    .end annotation

    .line 208
    invoke-static {p0}, Lorg/apache/logging/log4j/util/Strings;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    sget-object v0, Lorg/apache/logging/log4j/core/lookup/StrMatcher;->NONE_MATCHER:Lorg/apache/logging/log4j/core/lookup/StrMatcher;

    return-object v0

    .line 211
    :cond_0
    new-instance v0, Lorg/apache/logging/log4j/core/lookup/StrMatcher$StringMatcher;

    invoke-direct {v0, p0}, Lorg/apache/logging/log4j/core/lookup/StrMatcher$StringMatcher;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static tabMatcher()Lorg/apache/logging/log4j/core/lookup/StrMatcher;
    .locals 1

    .line 92
    sget-object v0, Lorg/apache/logging/log4j/core/lookup/StrMatcher;->TAB_MATCHER:Lorg/apache/logging/log4j/core/lookup/StrMatcher;

    return-object v0
.end method

.method public static trimMatcher()Lorg/apache/logging/log4j/core/lookup/StrMatcher;
    .locals 1

    .line 120
    sget-object v0, Lorg/apache/logging/log4j/core/lookup/StrMatcher;->TRIM_MATCHER:Lorg/apache/logging/log4j/core/lookup/StrMatcher;

    return-object v0
.end method


# virtual methods
.method public isMatch([CI)I
    .locals 2
    .param p1, "buffer"    # [C
    .param p2, "pos"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "buffer",
            "pos"
        }
    .end annotation

    .line 262
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Lorg/apache/logging/log4j/core/lookup/StrMatcher;->isMatch([CIII)I

    move-result v0

    return v0
.end method

.method public abstract isMatch([CIII)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "buffer",
            "pos",
            "bufferStart",
            "bufferEnd"
        }
    .end annotation
.end method
