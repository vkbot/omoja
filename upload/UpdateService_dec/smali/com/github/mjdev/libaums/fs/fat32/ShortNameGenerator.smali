.class public final Lcom/github/mjdev/libaums/fs/fat32/ShortNameGenerator;
.super Ljava/lang/Object;
.source "ShortNameGenerator.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nShortNameGenerator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShortNameGenerator.kt\ncom/github/mjdev/libaums/fs/fat32/ShortNameGenerator\n+ 2 Strings.kt\nkotlin/text/StringsKt__StringsKt\n*L\n1#1,213:1\n45#2:214\n17#2,22:215\n*E\n*S KotlinDebug\n*F\n+ 1 ShortNameGenerator.kt\ncom/github/mjdev/libaums/fs/fat32/ShortNameGenerator\n*L\n121#1:214\n121#1,22:215\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000c\n\u0002\u0008\u0002\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001e\u0010\u0003\u001a\u00020\u00042\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\u0008\u001a\u00020\u0007H\u0002J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u000bH\u0002J\u001c\u0010\u000c\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u000b2\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006J\u001a\u0010\u000f\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u0012H\u0002J\u0010\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u0015H\u0002J\u0010\u0010\u0016\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u000bH\u0002\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/github/mjdev/libaums/fs/fat32/ShortNameGenerator;",
        "",
        "()V",
        "containShortName",
        "",
        "shortNames",
        "",
        "Lcom/github/mjdev/libaums/fs/fat32/ShortName;",
        "shortName",
        "containsInvalidChars",
        "str",
        "",
        "generateShortName",
        "lfnName",
        "existingShortNames",
        "getNextHexPart",
        "hexPart",
        "limit",
        "",
        "isValidChar",
        "c",
        "",
        "replaceInvalidChars",
        "libaums_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/github/mjdev/libaums/fs/fat32/ShortNameGenerator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Lcom/github/mjdev/libaums/fs/fat32/ShortNameGenerator;

    invoke-direct {v0}, Lcom/github/mjdev/libaums/fs/fat32/ShortNameGenerator;-><init>()V

    sput-object v0, Lcom/github/mjdev/libaums/fs/fat32/ShortNameGenerator;->INSTANCE:Lcom/github/mjdev/libaums/fs/fat32/ShortNameGenerator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final containShortName(Ljava/util/Collection;Lcom/github/mjdev/libaums/fs/fat32/ShortName;)Z
    .locals 6
    .param p1, "shortNames"    # Ljava/util/Collection;
    .param p2, "shortName"    # Lcom/github/mjdev/libaums/fs/fat32/ShortName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/github/mjdev/libaums/fs/fat32/ShortName;",
            ">;",
            "Lcom/github/mjdev/libaums/fs/fat32/ShortName;",
            ")Z"
        }
    .end annotation

    .line 203
    const/4 v0, 0x0

    .line 204
    .local v0, "contain":Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/mjdev/libaums/fs/fat32/ShortName;

    .line 205
    .local v2, "temp":Lcom/github/mjdev/libaums/fs/fat32/ShortName;
    invoke-virtual {v2}, Lcom/github/mjdev/libaums/fs/fat32/ShortName;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/github/mjdev/libaums/fs/fat32/ShortName;->getString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 206
    const/4 v0, 0x1

    .line 207
    goto :goto_1

    .line 204
    .end local v2    # "temp":Lcom/github/mjdev/libaums/fs/fat32/ShortName;
    :cond_0
    goto :goto_0

    .line 210
    :cond_1
    :goto_1
    return v0
.end method

.method private final containsInvalidChars(Ljava/lang/String;)Z
    .locals 5
    .param p1, "str"    # Ljava/lang/String;

    .line 57
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 58
    .local v0, "length":I
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 59
    .local v2, "i":I
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 60
    .local v3, "c":C
    invoke-direct {p0, v3}, Lcom/github/mjdev/libaums/fs/fat32/ShortNameGenerator;->isValidChar(C)Z

    move-result v4

    if-nez v4, :cond_0

    .line 61
    const/4 v1, 0x1

    return v1

    .line 58
    .end local v3    # "c":C
    :cond_0
    nop

    .end local v2    # "i":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 63
    :cond_1
    return v1
.end method

.method private final getNextHexPart(Ljava/lang/String;I)Ljava/lang/String;
    .locals 7
    .param p1, "hexPart"    # Ljava/lang/String;
    .param p2, "limit"    # I

    .line 94
    const/16 v0, 0x10

    invoke-static {p1, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    .line 95
    .local v0, "hexValue":J
    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 96
    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "java.lang.Long.toHexString(hexValue)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    .local v2, "tempHexString":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v3, p2, :cond_1

    .line 98
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    sub-int v5, p2, v5

    :goto_0
    if-ge v4, v5, :cond_0

    .line 100
    .local v4, "i":I
    const-string v6, "0"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    nop

    .end local v4    # "i":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 102
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 104
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method

.method private final isValidChar(C)Z
    .locals 3
    .param p1, "c"    # C

    .line 41
    const/4 v0, 0x1

    const/16 v1, 0x30

    if-le v1, p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x39

    if-lt v1, p1, :cond_1

    .line 42
    return v0

    .line 43
    :cond_1
    :goto_0
    const/16 v1, 0x5a

    const/16 v2, 0x41

    if-le v2, p1, :cond_2

    goto :goto_1

    :cond_2
    if-lt v1, p1, :cond_3

    goto :goto_2

    .line 44
    :cond_3
    :goto_1
    nop

    .line 45
    const/16 v1, 0x24

    if-eq p1, v1, :cond_5

    const/16 v1, 0x25

    if-eq p1, v1, :cond_5

    const/16 v1, 0x27

    if-eq p1, v1, :cond_5

    const/16 v1, 0x2d

    if-eq p1, v1, :cond_5

    const/16 v1, 0x5f

    if-eq p1, v1, :cond_5

    const/16 v1, 0x40

    if-eq p1, v1, :cond_5

    const/16 v1, 0x7e

    if-eq p1, v1, :cond_5

    const/16 v1, 0x60

    if-eq p1, v1, :cond_5

    const/16 v1, 0x21

    if-eq p1, v1, :cond_5

    const/16 v1, 0x28

    if-eq p1, v1, :cond_5

    const/16 v1, 0x29

    if-eq p1, v1, :cond_5

    const/16 v1, 0x7b

    if-eq p1, v1, :cond_5

    const/16 v1, 0x7d

    if-eq p1, v1, :cond_5

    const/16 v1, 0x5e

    if-eq p1, v1, :cond_5

    const/16 v1, 0x23

    if-eq p1, v1, :cond_5

    const/16 v1, 0x26

    if-ne p1, v1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    .line 43
    :cond_5
    :goto_2
    return v0
.end method

.method private final replaceInvalidChars(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "str"    # Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 75
    .local v0, "length":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 77
    .local v1, "builder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 78
    .local v2, "i":I
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 79
    .local v3, "c":C
    invoke-direct {p0, v3}, Lcom/github/mjdev/libaums/fs/fat32/ShortNameGenerator;->isValidChar(C)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 80
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 82
    :cond_0
    const-string v4, "_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .end local v3    # "c":C
    :goto_1
    nop

    .line 77
    nop

    .end local v2    # "i":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 86
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "builder.toString()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v2
.end method


# virtual methods
.method public final generateShortName(Ljava/lang/String;Ljava/util/Collection;)Lcom/github/mjdev/libaums/fs/fat32/ShortName;
    .locals 22
    .param p1, "lfnName"    # Ljava/lang/String;
    .param p2, "existingShortNames"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Lcom/github/mjdev/libaums/fs/fat32/ShortName;",
            ">;)",
            "Lcom/github/mjdev/libaums/fs/fat32/ShortName;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "lfnName"

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "existingShortNames"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    move-object/from16 v2, p1

    .line 121
    .local v2, "lfnName":Ljava/lang/String;
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v5, "Locale.ROOT"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "(this as java.lang.String).toUpperCase(locale)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .local v4, "$this$trim$iv":Ljava/lang/String;
    const/4 v5, 0x0

    .line 214
    .local v5, "$i$f$trim":I
    move-object v6, v4

    check-cast v6, Ljava/lang/CharSequence;

    .local v6, "$this$trim$iv$iv":Ljava/lang/CharSequence;
    const/4 v7, 0x0

    .line 215
    .local v7, "$i$f$trim":I
    const/4 v8, 0x0

    .line 216
    .local v8, "startIndex$iv$iv":I
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v9

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    .line 217
    .local v9, "endIndex$iv$iv":I
    const/4 v11, 0x0

    .line 219
    .local v11, "startFound$iv$iv":Z
    :goto_0
    const/4 v12, 0x0

    if-gt v8, v9, :cond_5

    .line 220
    if-nez v11, :cond_0

    move v13, v8

    goto :goto_1

    :cond_0
    move v13, v9

    .line 221
    .local v13, "index$iv$iv":I
    :goto_1
    invoke-interface {v6, v13}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v14

    .local v14, "it":C
    const/4 v15, 0x0

    .line 121
    .local v15, "$i$a$-trim-ShortNameGenerator$generateShortName$1":I
    const/16 v10, 0x20

    if-gt v14, v10, :cond_1

    const/4 v10, 0x1

    goto :goto_2

    :cond_1
    move v10, v12

    .line 223
    .end local v14    # "it":C
    .end local v15    # "$i$a$-trim-ShortNameGenerator$generateShortName$1":I
    .local v10, "match$iv$iv":Z
    :goto_2
    if-nez v11, :cond_3

    .line 224
    if-nez v10, :cond_2

    .line 225
    const/4 v11, 0x1

    goto :goto_3

    .line 227
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 229
    :cond_3
    if-nez v10, :cond_4

    .line 230
    goto :goto_4

    .line 232
    :cond_4
    add-int/lit8 v9, v9, -0x1

    .line 233
    .end local v10    # "match$iv$iv":Z
    .end local v13    # "index$iv$iv":I
    :goto_3
    nop

    .line 219
    const/4 v10, 0x1

    goto :goto_0

    .line 236
    :cond_5
    :goto_4
    add-int/lit8 v10, v9, 0x1

    invoke-interface {v6, v8, v10}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    .line 214
    .end local v6    # "$this$trim$iv$iv":Ljava/lang/CharSequence;
    .end local v7    # "$i$f$trim":I
    .end local v8    # "startIndex$iv$iv":I
    .end local v9    # "endIndex$iv$iv":I
    .end local v11    # "startFound$iv$iv":Z
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 124
    .end local v4    # "$this$trim$iv":Ljava/lang/String;
    .end local v5    # "$i$f$trim":I
    const/4 v4, 0x0

    .line 125
    .local v4, "i":I
    :goto_5
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_7

    .line 126
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2e

    if-eq v5, v6, :cond_6

    .line 127
    goto :goto_6

    .line 128
    :cond_6
    add-int/lit8 v4, v4, 0x1

    .line 125
    goto :goto_5

    .line 131
    :cond_7
    :goto_6
    const-string v5, "null cannot be cast to non-null type java.lang.String"

    if-eqz v2, :cond_1b

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    const-string v13, "(this as java.lang.String).substring(startIndex)"

    invoke-static {v6, v13}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    .end local v2    # "lfnName":Ljava/lang/String;
    .local v6, "lfnName":Ljava/lang/String;
    const/4 v9, 0x0

    const/4 v10, 0x4

    const/4 v11, 0x0

    const-string v7, " "

    const-string v8, ""

    invoke-static/range {v6 .. v11}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 134
    .end local v6    # "lfnName":Ljava/lang/String;
    .restart local v2    # "lfnName":Ljava/lang/String;
    const/4 v6, 0x0

    .line 135
    .local v6, "filenamePart":Ljava/lang/String;
    const/4 v7, 0x0

    .line 137
    .local v7, "extensionPart":Ljava/lang/String;
    move-object/from16 v16, v2

    check-cast v16, Ljava/lang/CharSequence;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x6

    const/16 v21, 0x0

    const-string v17, "."

    invoke-static/range {v16 .. v21}, Lkotlin/text/StringsKt;->lastIndexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v8

    .line 138
    .local v8, "indexOfDot":I
    const/4 v9, -0x1

    const-string v10, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    if-ne v8, v9, :cond_8

    .line 140
    move-object v6, v2

    .line 141
    const-string v7, ""

    goto :goto_7

    .line 145
    :cond_8
    if-eqz v2, :cond_1a

    invoke-virtual {v2, v12, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v6, v9

    .line 146
    add-int/lit8 v9, v8, 0x1

    if-eqz v2, :cond_19

    invoke-virtual {v2, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v13}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v7, v9

    .line 147
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v11, 0x3

    if-le v9, v11, :cond_a

    .line 148
    if-eqz v7, :cond_9

    invoke-virtual {v7, v12, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v7, v9

    goto :goto_7

    :cond_9
    new-instance v9, Lkotlin/TypeCastException;

    invoke-direct {v9, v5}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 150
    :cond_a
    :goto_7
    nop

    .line 153
    invoke-direct {v0, v6}, Lcom/github/mjdev/libaums/fs/fat32/ShortNameGenerator;->containsInvalidChars(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 154
    invoke-direct {v0, v6}, Lcom/github/mjdev/libaums/fs/fat32/ShortNameGenerator;->replaceInvalidChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 158
    :cond_b
    invoke-direct {v0, v7}, Lcom/github/mjdev/libaums/fs/fat32/ShortNameGenerator;->containsInvalidChars(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 159
    invoke-direct {v0, v7}, Lcom/github/mjdev/libaums/fs/fat32/ShortNameGenerator;->replaceInvalidChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 162
    :cond_c
    move-object v9, v6

    .line 163
    .local v9, "filePrefix":Ljava/lang/String;
    nop

    .line 164
    move-object v11, v6

    check-cast v11, Ljava/lang/CharSequence;

    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v11

    if-nez v11, :cond_d

    const/4 v11, 0x1

    goto :goto_8

    :cond_d
    move v11, v12

    :goto_8
    const/4 v13, 0x2

    if-eqz v11, :cond_e

    const-string v9, "__"

    goto :goto_9

    .line 165
    :cond_e
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v14, 0x1

    if-ne v11, v14, :cond_f

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "_"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_9

    .line 166
    :cond_f
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    if-ne v11, v13, :cond_10

    goto :goto_9

    .line 169
    :cond_10
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    if-le v11, v13, :cond_12

    if-eqz v6, :cond_11

    invoke-virtual {v6, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v9, v5

    goto :goto_9

    :cond_11
    new-instance v10, Lkotlin/TypeCastException;

    invoke-direct {v10, v5}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 170
    :cond_12
    :goto_9
    nop

    .line 172
    move-object v5, v7

    .line 173
    .local v5, "extSuffix":Ljava/lang/String;
    nop

    .line 174
    move-object v10, v7

    check-cast v10, Ljava/lang/CharSequence;

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-nez v10, :cond_13

    const/4 v12, 0x1

    :cond_13
    if-eqz v12, :cond_14

    const-string v5, "000"

    goto :goto_a

    .line 175
    :cond_14
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_15

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "00"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_a

    .line 176
    :cond_15
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    if-ne v10, v13, :cond_16

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "0"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 177
    :cond_16
    :goto_a
    nop

    .line 179
    const-string v10, "0000"

    .line 180
    .local v10, "hexPart":Ljava/lang/String;
    const/4 v11, 0x0

    .line 182
    .local v11, "tildeDigit":I
    new-instance v12, Lcom/github/mjdev/libaums/fs/fat32/ShortName;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v14, 0x7e

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13, v5}, Lcom/github/mjdev/libaums/fs/fat32/ShortName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    .local v12, "result":Lcom/github/mjdev/libaums/fs/fat32/ShortName;
    :goto_b
    invoke-direct {v0, v1, v12}, Lcom/github/mjdev/libaums/fs/fat32/ShortNameGenerator;->containShortName(Ljava/util/Collection;Lcom/github/mjdev/libaums/fs/fat32/ShortName;)Z

    move-result v13

    if-eqz v13, :cond_18

    .line 184
    const/4 v13, 0x4

    invoke-direct {v0, v10, v13}, Lcom/github/mjdev/libaums/fs/fat32/ShortNameGenerator;->getNextHexPart(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    .line 185
    .local v13, "hexPartNullable":Ljava/lang/String;
    if-eqz v13, :cond_17

    .line 186
    move-object v10, v13

    goto :goto_c

    .line 188
    :cond_17
    add-int/lit8 v15, v11, 0x1

    const/16 v14, 0xa

    if-ge v15, v14, :cond_18

    .line 189
    add-int/lit8 v11, v11, 0x1

    .line 190
    const-string v10, "0000"

    .line 194
    :goto_c
    nop

    .line 195
    nop

    .line 196
    new-instance v14, Lcom/github/mjdev/libaums/fs/fat32/ShortName;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x7e

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15, v5}, Lcom/github/mjdev/libaums/fs/fat32/ShortName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v12, v14

    .line 183
    .end local v13    # "hexPartNullable":Ljava/lang/String;
    move v14, v0

    move-object/from16 v0, p0

    goto :goto_b

    .line 199
    :cond_18
    return-object v12

    .line 146
    .end local v5    # "extSuffix":Ljava/lang/String;
    .end local v9    # "filePrefix":Ljava/lang/String;
    .end local v10    # "hexPart":Ljava/lang/String;
    .end local v11    # "tildeDigit":I
    .end local v12    # "result":Lcom/github/mjdev/libaums/fs/fat32/ShortName;
    :cond_19
    new-instance v0, Lkotlin/TypeCastException;

    invoke-direct {v0, v5}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_1a
    new-instance v0, Lkotlin/TypeCastException;

    invoke-direct {v0, v5}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    .end local v6    # "filenamePart":Ljava/lang/String;
    .end local v7    # "extensionPart":Ljava/lang/String;
    .end local v8    # "indexOfDot":I
    :cond_1b
    new-instance v0, Lkotlin/TypeCastException;

    invoke-direct {v0, v5}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
