.class Lorg/apache/logging/log4j/core/util/datetime/FormatCache$MultipartKey;
.super Ljava/lang/Object;
.source "FormatCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/util/datetime/FormatCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MultipartKey"
.end annotation


# instance fields
.field private hashCode:I

.field private final keys:[Ljava/lang/Object;


# direct methods
.method public varargs constructor <init>([Ljava/lang/Object;)V
    .locals 0
    .param p1, "keys"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "keys"
        }
    .end annotation

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    iput-object p1, p0, Lorg/apache/logging/log4j/core/util/datetime/FormatCache$MultipartKey;->keys:[Ljava/lang/Object;

    .line 239
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "obj"
        }
    .end annotation

    .line 249
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/datetime/FormatCache$MultipartKey;->keys:[Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lorg/apache/logging/log4j/core/util/datetime/FormatCache$MultipartKey;

    iget-object v1, v1, Lorg/apache/logging/log4j/core/util/datetime/FormatCache$MultipartKey;->keys:[Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 7

    .line 257
    iget v0, p0, Lorg/apache/logging/log4j/core/util/datetime/FormatCache$MultipartKey;->hashCode:I

    if-nez v0, :cond_2

    .line 258
    const/4 v0, 0x0

    .line 259
    .local v0, "rc":I
    iget-object v1, p0, Lorg/apache/logging/log4j/core/util/datetime/FormatCache$MultipartKey;->keys:[Ljava/lang/Object;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 260
    .local v4, "key":Ljava/lang/Object;
    if-eqz v4, :cond_0

    .line 261
    mul-int/lit8 v5, v0, 0x7

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v6

    add-int/2addr v5, v6

    move v0, v5

    .line 259
    .end local v4    # "key":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 264
    :cond_1
    iput v0, p0, Lorg/apache/logging/log4j/core/util/datetime/FormatCache$MultipartKey;->hashCode:I

    .line 266
    .end local v0    # "rc":I
    :cond_2
    iget v0, p0, Lorg/apache/logging/log4j/core/util/datetime/FormatCache$MultipartKey;->hashCode:I

    return v0
.end method
