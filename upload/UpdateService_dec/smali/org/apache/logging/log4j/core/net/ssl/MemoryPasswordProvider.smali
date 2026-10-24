.class Lorg/apache/logging/log4j/core/net/ssl/MemoryPasswordProvider;
.super Ljava/lang/Object;
.source "MemoryPasswordProvider.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/net/ssl/PasswordProvider;


# instance fields
.field private final password:[C


# direct methods
.method public constructor <init>([C)V
    .locals 1
    .param p1, "chars"    # [C
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "chars"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    if-eqz p1, :cond_0

    .line 35
    invoke-virtual {p1}, [C->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    iput-object v0, p0, Lorg/apache/logging/log4j/core/net/ssl/MemoryPasswordProvider;->password:[C

    goto :goto_0

    .line 37
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/net/ssl/MemoryPasswordProvider;->password:[C

    .line 39
    :goto_0
    return-void
.end method


# virtual methods
.method public clearSecrets()V
    .locals 2

    .line 50
    iget-object v0, p0, Lorg/apache/logging/log4j/core/net/ssl/MemoryPasswordProvider;->password:[C

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V

    .line 51
    return-void
.end method

.method public getPassword()[C
    .locals 1

    .line 43
    iget-object v0, p0, Lorg/apache/logging/log4j/core/net/ssl/MemoryPasswordProvider;->password:[C

    if-nez v0, :cond_0

    .line 44
    const/4 v0, 0x0

    return-object v0

    .line 46
    :cond_0
    invoke-virtual {v0}, [C->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    return-object v0
.end method
