.class public Lorg/apache/ftpserver/util/PasswordUtil;
.super Ljava/lang/Object;
.source "PasswordUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static secureCompare(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 4
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "loops"    # I

    .line 41
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt p2, v0, :cond_2

    .line 48
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    xor-int/2addr v0, v1

    .line 58
    .local v0, "result":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_0

    .line 59
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    rem-int v2, v1, v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    rem-int v3, v1, v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    xor-int/2addr v2, v3

    or-int/2addr v0, v2

    .line 58
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 62
    .end local v1    # "i":I
    :cond_0
    if-nez v0, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 42
    .end local v0    # "result":I
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "loops must be equal or greater than the password length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static secureCompareFast(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;

    .line 82
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 87
    .local v0, "loops":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    xor-int/2addr v1, v2

    .line 97
    .local v1, "result":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 98
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    rem-int v3, v2, v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    rem-int v4, v2, v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    xor-int/2addr v3, v4

    or-int/2addr v1, v3

    .line 97
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 101
    .end local v2    # "i":I
    :cond_0
    if-nez v1, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    return v2
.end method
