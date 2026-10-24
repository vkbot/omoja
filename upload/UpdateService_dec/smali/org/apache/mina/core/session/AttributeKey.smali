.class public final Lorg/apache/mina/core/session/AttributeKey;
.super Ljava/lang/Object;
.source "AttributeKey.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x81892b89e950458L


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 58
    .local p1, "source":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/mina/core/session/AttributeKey;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/core/session/AttributeKey;->name:Ljava/lang/String;

    .line 60
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 83
    if-ne p0, p1, :cond_0

    .line 84
    const/4 v0, 0x1

    return v0

    .line 87
    :cond_0
    instance-of v0, p1, Lorg/apache/mina/core/session/AttributeKey;

    if-nez v0, :cond_1

    .line 88
    const/4 v0, 0x0

    return v0

    .line 91
    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/apache/mina/core/session/AttributeKey;

    .line 93
    .local v0, "other":Lorg/apache/mina/core/session/AttributeKey;
    iget-object v1, p0, Lorg/apache/mina/core/session/AttributeKey;->name:Ljava/lang/String;

    iget-object v2, v0, Lorg/apache/mina/core/session/AttributeKey;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/apache/mina/core/session/AttributeKey;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit16 v0, v0, 0x275

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lorg/apache/mina/core/session/AttributeKey;->name:Ljava/lang/String;

    return-object v0
.end method
