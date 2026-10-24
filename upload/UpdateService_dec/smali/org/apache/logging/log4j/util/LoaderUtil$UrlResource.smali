.class Lorg/apache/logging/log4j/util/LoaderUtil$UrlResource;
.super Ljava/lang/Object;
.source "LoaderUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/util/LoaderUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UrlResource"
.end annotation


# instance fields
.field private final classLoader:Ljava/lang/ClassLoader;

.field private final url:Ljava/net/URL;


# direct methods
.method constructor <init>(Ljava/lang/ClassLoader;Ljava/net/URL;)V
    .locals 0
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .param p2, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "classLoader",
            "url"
        }
    .end annotation

    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 314
    iput-object p1, p0, Lorg/apache/logging/log4j/util/LoaderUtil$UrlResource;->classLoader:Ljava/lang/ClassLoader;

    .line 315
    iput-object p2, p0, Lorg/apache/logging/log4j/util/LoaderUtil$UrlResource;->url:Ljava/net/URL;

    .line 316
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "o"
        }
    .end annotation

    .line 328
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 329
    return v0

    .line 331
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 335
    :cond_1
    move-object v2, p1

    check-cast v2, Lorg/apache/logging/log4j/util/LoaderUtil$UrlResource;

    .line 337
    .local v2, "that":Lorg/apache/logging/log4j/util/LoaderUtil$UrlResource;
    iget-object v3, p0, Lorg/apache/logging/log4j/util/LoaderUtil$UrlResource;->classLoader:Ljava/lang/ClassLoader;

    if-eqz v3, :cond_2

    iget-object v4, v2, Lorg/apache/logging/log4j/util/LoaderUtil$UrlResource;->classLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_2
    iget-object v3, v2, Lorg/apache/logging/log4j/util/LoaderUtil$UrlResource;->classLoader:Ljava/lang/ClassLoader;

    if-eqz v3, :cond_3

    .line 338
    :goto_0
    return v1

    .line 340
    :cond_3
    iget-object v3, p0, Lorg/apache/logging/log4j/util/LoaderUtil$UrlResource;->url:Ljava/net/URL;

    if-eqz v3, :cond_4

    iget-object v4, v2, Lorg/apache/logging/log4j/util/LoaderUtil$UrlResource;->url:Ljava/net/URL;

    invoke-virtual {v3, v4}, Ljava/net/URL;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_1

    :cond_4
    iget-object v3, v2, Lorg/apache/logging/log4j/util/LoaderUtil$UrlResource;->url:Ljava/net/URL;

    if-eqz v3, :cond_5

    .line 341
    :goto_1
    return v1

    .line 344
    :cond_5
    return v0

    .line 332
    .end local v2    # "that":Lorg/apache/logging/log4j/util/LoaderUtil$UrlResource;
    :cond_6
    :goto_2
    return v1
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .line 319
    iget-object v0, p0, Lorg/apache/logging/log4j/util/LoaderUtil$UrlResource;->classLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public getUrl()Ljava/net/URL;
    .locals 1

    .line 323
    iget-object v0, p0, Lorg/apache/logging/log4j/util/LoaderUtil$UrlResource;->url:Ljava/net/URL;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 349
    iget-object v0, p0, Lorg/apache/logging/log4j/util/LoaderUtil$UrlResource;->classLoader:Ljava/lang/ClassLoader;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lorg/apache/logging/log4j/util/LoaderUtil$UrlResource;->url:Ljava/net/URL;

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
