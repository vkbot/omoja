.class public final Lorg/apache/logging/log4j/core/util/Integers;
.super Ljava/lang/Object;
.source "Integers.java"


# static fields
.field private static final BITS_PER_INT:I = 0x20


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public static ceilingNextPowerOfTwo(I)I
    .locals 2
    .param p0, "x"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "x"
        }
    .end annotation

    .line 66
    add-int/lit8 v0, p0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x20

    const/4 v1, 0x1

    shl-int v0, v1, v0

    return v0
.end method

.method public static parseInt(Ljava/lang/String;)I
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "s"
        }
    .end annotation

    .line 54
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/logging/log4j/core/util/Integers;->parseInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static parseInt(Ljava/lang/String;I)I
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "defaultValue"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "s",
            "defaultValue"
        }
    .end annotation

    .line 43
    invoke-static {p0}, Lorg/apache/logging/log4j/util/Strings;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0
.end method
