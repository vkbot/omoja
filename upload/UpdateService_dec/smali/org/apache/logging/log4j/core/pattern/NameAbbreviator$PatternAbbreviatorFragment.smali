.class final Lorg/apache/logging/log4j/core/pattern/NameAbbreviator$PatternAbbreviatorFragment;
.super Ljava/lang/Object;
.source "NameAbbreviator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/pattern/NameAbbreviator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PatternAbbreviatorFragment"
.end annotation


# static fields
.field static final EMPTY_ARRAY:[Lorg/apache/logging/log4j/core/pattern/NameAbbreviator$PatternAbbreviatorFragment;


# instance fields
.field private final charCount:I

.field private final ellipsis:C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 263
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/logging/log4j/core/pattern/NameAbbreviator$PatternAbbreviatorFragment;

    sput-object v0, Lorg/apache/logging/log4j/core/pattern/NameAbbreviator$PatternAbbreviatorFragment;->EMPTY_ARRAY:[Lorg/apache/logging/log4j/core/pattern/NameAbbreviator$PatternAbbreviatorFragment;

    return-void
.end method

.method constructor <init>(IC)V
    .locals 0
    .param p1, "charCount"    # I
    .param p2, "ellipsis"    # C
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "charCount",
            "ellipsis"
        }
    .end annotation

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 285
    iput p1, p0, Lorg/apache/logging/log4j/core/pattern/NameAbbreviator$PatternAbbreviatorFragment;->charCount:I

    .line 286
    iput-char p2, p0, Lorg/apache/logging/log4j/core/pattern/NameAbbreviator$PatternAbbreviatorFragment;->ellipsis:C

    .line 287
    return-void
.end method


# virtual methods
.method abbreviate(Ljava/lang/String;ILjava/lang/StringBuilder;)I
    .locals 4
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "inputIndex"    # I
    .param p3, "buf"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "input",
            "inputIndex",
            "buf"
        }
    .end annotation

    .line 304
    const/16 v0, 0x2e

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 305
    .local v1, "nextDot":I
    if-gez v1, :cond_0

    .line 306
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p3, p1, p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 307
    return v1

    .line 309
    :cond_0
    sub-int v2, v1, p2

    iget v3, p0, Lorg/apache/logging/log4j/core/pattern/NameAbbreviator$PatternAbbreviatorFragment;->charCount:I

    if-le v2, v3, :cond_2

    .line 310
    add-int/2addr v3, p2

    invoke-virtual {p3, p1, p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 311
    iget-char v2, p0, Lorg/apache/logging/log4j/core/pattern/NameAbbreviator$PatternAbbreviatorFragment;->ellipsis:C

    if-eqz v2, :cond_1

    .line 312
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 314
    :cond_1
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 317
    :cond_2
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p3, p1, p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 319
    :goto_0
    add-int/lit8 v0, v1, 0x1

    return v0
.end method
