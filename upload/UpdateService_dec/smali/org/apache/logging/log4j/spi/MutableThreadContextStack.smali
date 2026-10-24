.class public Lorg/apache/logging/log4j/spi/MutableThreadContextStack;
.super Ljava/lang/Object;
.source "MutableThreadContextStack.java"

# interfaces
.implements Lorg/apache/logging/log4j/spi/ThreadContextStack;
.implements Lorg/apache/logging/log4j/util/StringBuilderFormattable;


# static fields
.field private static final serialVersionUID:J = 0x302a533L


# instance fields
.field private frozen:Z

.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;-><init>(Ljava/util/List;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "list"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 52
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;->list:Ljava/util/List;

    .line 54
    return-void
.end method

.method private constructor <init>(Lorg/apache/logging/log4j/spi/MutableThreadContextStack;)V
    .locals 2
    .param p1, "stack"    # Lorg/apache/logging/log4j/spi/MutableThreadContextStack;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "stack"
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;->list:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;->list:Ljava/util/List;

    .line 58
    return-void
.end method

.method private checkInvariants()V
    .locals 2

    .line 61
    iget-boolean v0, p0, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;->frozen:Z

    if-nez v0, :cond_0

    .line 64
    return-void

    .line 62
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "context stack has been frozen"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "s"
        }
    .end annotation

    .line 31
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;->add(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public add(Ljava/lang/String;)Z
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "s"
        }
    .end annotation

    .line 163
    invoke-direct {p0}, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;->checkInvariants()V

    .line 164
    iget-object v0, p0, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "strings"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 180
    .local p1, "strings":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/String;>;"
    invoke-direct {p0}, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;->checkInvariants()V

    .line 181
    iget-object v0, p0, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public asList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;->list:Ljava/util/List;

    return-object v0
.end method

.method public clear()V
    .locals 1

    .line 127
    invoke-direct {p0}, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;->checkInvariants()V

    .line 128
    iget-object v0, p0, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 129
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "o"
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "objects"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 175
    .local p1, "objects":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic copy()Lorg/apache/logging/log4j/ThreadContext$ContextStack;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;->copy()Lorg/apache/logging/log4j/spi/ThreadContextStack;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lorg/apache/logging/log4j/spi/ThreadContextStack;
    .locals 1

    .line 122
    new-instance v0, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;

    invoke-direct {v0, p0}, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;-><init>(Lorg/apache/logging/log4j/spi/MutableThreadContextStack;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "obj"
        }
    .end annotation

    .line 220
    if-ne p0, p1, :cond_0

    .line 221
    const/4 v0, 0x1

    return v0

    .line 223
    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 224
    return v0

    .line 226
    :cond_1
    instance-of v1, p1, Lorg/apache/logging/log4j/spi/ThreadContextStack;

    if-nez v1, :cond_2

    .line 227
    return v0

    .line 229
    :cond_2
    move-object v0, p1

    check-cast v0, Lorg/apache/logging/log4j/spi/ThreadContextStack;

    .line 230
    .local v0, "other":Lorg/apache/logging/log4j/spi/ThreadContextStack;
    invoke-interface {v0}, Lorg/apache/logging/log4j/spi/ThreadContextStack;->asList()Ljava/util/List;

    move-result-object v1

    .line 231
    .local v1, "otherAsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;->list:Ljava/util/List;

    invoke-static {v2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method public formatTo(Ljava/lang/StringBuilder;)V
    .locals 2
    .param p1, "buffer"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "buffer"
        }
    .end annotation

    .line 203
    const/16 v0, 0x5b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 204
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 205
    if-lez v0, :cond_0

    .line 206
    const/16 v1, 0x2c

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 208
    :cond_0
    iget-object v1, p0, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;->list:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 210
    .end local v0    # "i":I
    :cond_1
    const/16 v0, 0x5d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 211
    return-void
.end method

.method public freeze()V
    .locals 1

    .line 243
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;->frozen:Z

    .line 244
    return-void
.end method

.method public getDepth()I
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getImmutableStackOrNull()Lorg/apache/logging/log4j/ThreadContext$ContextStack;
    .locals 1

    .line 236
    invoke-virtual {p0}, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;->copy()Lorg/apache/logging/log4j/spi/ThreadContextStack;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 215
    iget-object v0, p0, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;->list:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 138
    iget-object v0, p0, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isFrozen()Z
    .locals 1

    .line 251
    iget-boolean v0, p0, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;->frozen:Z

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public peek()Ljava/lang/String;
    .locals 2

    .line 79
    iget-object v0, p0, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    const/4 v0, 0x0

    return-object v0

    .line 82
    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 83
    .local v0, "last":I
    iget-object v1, p0, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;->list:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method public pop()Ljava/lang/String;
    .locals 2

    .line 68
    invoke-direct {p0}, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;->checkInvariants()V

    .line 69
    iget-object v0, p0, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    const/4 v0, 0x0

    return-object v0

    .line 72
    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 73
    .local v0, "last":I
    iget-object v1, p0, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;->list:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 74
    .local v1, "result":Ljava/lang/String;
    return-object v1
.end method

.method public push(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "message"
        }
    .end annotation

    .line 88
    invoke-direct {p0}, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;->checkInvariants()V

    .line 89
    iget-object v0, p0, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    return-void
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "o"
        }
    .end annotation

    .line 169
    invoke-direct {p0}, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;->checkInvariants()V

    .line 170
    iget-object v0, p0, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "objects"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 186
    .local p1, "objects":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-direct {p0}, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;->checkInvariants()V

    .line 187
    iget-object v0, p0, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "objects"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 192
    .local p1, "objects":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-direct {p0}, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;->checkInvariants()V

    .line 193
    iget-object v0, p0, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .line 133
    iget-object v0, p0, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .line 153
    iget-object v0, p0, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "ts"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 158
    .local p1, "ts":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 198
    iget-object v0, p0, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;->list:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public trim(I)V
    .locals 4
    .param p1, "depth"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "depth"
        }
    .end annotation

    .line 104
    invoke-direct {p0}, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;->checkInvariants()V

    .line 105
    if-ltz p1, :cond_2

    .line 108
    iget-object v0, p0, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;->list:Ljava/util/List;

    if-nez v0, :cond_0

    .line 109
    return-void

    .line 111
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 112
    .local v0, "copy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 113
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 114
    iget-object v3, p0, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;->list:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 116
    .end local v2    # "i":I
    :cond_1
    iget-object v2, p0, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;->list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 117
    iget-object v2, p0, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;->list:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 118
    return-void

    .line 106
    .end local v0    # "copy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "count":I
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Maximum stack depth cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
