.class public Lorg/apache/logging/log4j/core/impl/JdkMapAdapterStringMap;
.super Ljava/lang/Object;
.source "JdkMapAdapterStringMap.java"

# interfaces
.implements Lorg/apache/logging/log4j/util/StringMap;


# static fields
.field private static final FROZEN:Ljava/lang/String; = "Frozen collection cannot be modified"

.field private static final NULL_FIRST_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static PUT_ALL:Lorg/apache/logging/log4j/util/TriConsumer; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/logging/log4j/util/TriConsumer<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x65fa386d8179680cL


# instance fields
.field private immutable:Z

.field private final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private transient sortedKeys:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    sget-object v0, Lorg/apache/logging/log4j/core/impl/-$$Lambda$JdkMapAdapterStringMap$XVswjqFfifXeLlviWJlkPdJcf1M;->INSTANCE:Lorg/apache/logging/log4j/core/impl/-$$Lambda$JdkMapAdapterStringMap$XVswjqFfifXeLlviWJlkPdJcf1M;

    sput-object v0, Lorg/apache/logging/log4j/core/impl/JdkMapAdapterStringMap;->NULL_FIRST_COMPARATOR:Ljava/util/Comparator;

    .line 144
    sget-object v0, Lorg/apache/logging/log4j/core/impl/-$$Lambda$JdkMapAdapterStringMap$sBb5VhlMwjs5wvQeUnR996JR1v4;->INSTANCE:Lorg/apache/logging/log4j/core/impl/-$$Lambda$JdkMapAdapterStringMap$sBb5VhlMwjs5wvQeUnR996JR1v4;

    sput-object v0, Lorg/apache/logging/log4j/core/impl/JdkMapAdapterStringMap;->PUT_ALL:Lorg/apache/logging/log4j/util/TriConsumer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/logging/log4j/core/impl/JdkMapAdapterStringMap;-><init>(Ljava/util/Map;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "map"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 55
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/logging/log4j/core/impl/JdkMapAdapterStringMap;->immutable:Z

    .line 56
    const-string v0, "map"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lorg/apache/logging/log4j/core/impl/JdkMapAdapterStringMap;->map:Ljava/util/Map;

    .line 57
    return-void
.end method

.method private assertNotFrozen()V
    .locals 2

    .line 65
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/impl/JdkMapAdapterStringMap;->immutable:Z

    if-nez v0, :cond_0

    .line 68
    return-void

    .line 66
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Frozen collection cannot be modified"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getSortedKeys()[Ljava/lang/String;
    .locals 2

    .line 94
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/JdkMapAdapterStringMap;->sortedKeys:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 95
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/JdkMapAdapterStringMap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lorg/apache/logging/log4j/util/Strings;->EMPTY_ARRAY:[Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/logging/log4j/core/impl/JdkMapAdapterStringMap;->sortedKeys:[Ljava/lang/String;

    .line 96
    sget-object v1, Lorg/apache/logging/log4j/core/impl/JdkMapAdapterStringMap;->NULL_FIRST_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 98
    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/JdkMapAdapterStringMap;->sortedKeys:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic lambda$static$0(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "left"    # Ljava/lang/String;
    .param p1, "right"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "left",
            "right"
        }
    .end annotation

    .line 38
    if-nez p0, :cond_0

    .line 39
    const/4 v0, -0x1

    return v0

    .line 41
    :cond_0
    if-nez p1, :cond_1

    .line 42
    const/4 v0, 0x1

    return v0

    .line 44
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic lambda$static$1(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "stringStringMap"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "key",
            "value",
            "stringStringMap"
        }
    .end annotation

    .line 144
    invoke-interface {p2, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 119
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/JdkMapAdapterStringMap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    return-void

    .line 122
    :cond_0
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/impl/JdkMapAdapterStringMap;->assertNotFrozen()V

    .line 123
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/JdkMapAdapterStringMap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/impl/JdkMapAdapterStringMap;->sortedKeys:[Ljava/lang/String;

    .line 125
    return-void
.end method

.method public containsKey(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "key"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/JdkMapAdapterStringMap;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "object"
        }
    .end annotation

    .line 180
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 181
    return v0

    .line 183
    :cond_0
    instance-of v1, p1, Lorg/apache/logging/log4j/core/impl/JdkMapAdapterStringMap;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 184
    return v2

    .line 186
    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/apache/logging/log4j/core/impl/JdkMapAdapterStringMap;

    .line 187
    .local v1, "other":Lorg/apache/logging/log4j/core/impl/JdkMapAdapterStringMap;
    iget-object v3, p0, Lorg/apache/logging/log4j/core/impl/JdkMapAdapterStringMap;->map:Ljava/util/Map;

    iget-object v4, v1, Lorg/apache/logging/log4j/core/impl/JdkMapAdapterStringMap;->map:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lorg/apache/logging/log4j/core/impl/JdkMapAdapterStringMap;->immutable:Z

    iget-boolean v4, v1, Lorg/apache/logging/log4j/core/impl/JdkMapAdapterStringMap;->immutable:Z

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public forEach(Lorg/apache/logging/log4j/util/BiConsumer;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "action"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/logging/log4j/util/BiConsumer<",
            "Ljava/lang/String;",
            "-TV;>;)V"
        }
    .end annotation

    .line 78
    .local p1, "action":Lorg/apache/logging/log4j/util/BiConsumer;, "Lorg/apache/logging/log4j/util/BiConsumer<Ljava/lang/String;-TV;>;"
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/impl/JdkMapAdapterStringMap;->getSortedKeys()[Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "keys":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 80
    aget-object v2, v0, v1

    iget-object v3, p0, Lorg/apache/logging/log4j/core/impl/JdkMapAdapterStringMap;->map:Ljava/util/Map;

    aget-object v4, v0, v1

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Lorg/apache/logging/log4j/util/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 79
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 82
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public forEach(Lorg/apache/logging/log4j/util/TriConsumer;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "action",
            "state"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/logging/log4j/util/TriConsumer<",
            "Ljava/lang/String;",
            "-TV;TS;>;TS;)V"
        }
    .end annotation

    .line 87
    .local p1, "action":Lorg/apache/logging/log4j/util/TriConsumer;, "Lorg/apache/logging/log4j/util/TriConsumer<Ljava/lang/String;-TV;TS;>;"
    .local p2, "state":Ljava/lang/Object;, "TS;"
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/impl/JdkMapAdapterStringMap;->getSortedKeys()[Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "keys":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 89
    aget-object v2, v0, v1

    iget-object v3, p0, Lorg/apache/logging/log4j/core/impl/JdkMapAdapterStringMap;->map:Ljava/util/Map;

    aget-object v4, v0, v1

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v2, v3, p2}, Lorg/apache/logging/log4j/util/TriConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 88
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 91
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public freeze()V
    .locals 1

    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/logging/log4j/core/impl/JdkMapAdapterStringMap;->immutable:Z

    .line 130
    return-void
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TV;"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/JdkMapAdapterStringMap;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 192
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/JdkMapAdapterStringMap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    iget-boolean v1, p0, Lorg/apache/logging/log4j/core/impl/JdkMapAdapterStringMap;->immutable:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x1f

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 109
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/JdkMapAdapterStringMap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isFrozen()Z
    .locals 1

    .line 134
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/impl/JdkMapAdapterStringMap;->immutable:Z

    return v0
.end method

.method public putAll(Lorg/apache/logging/log4j/util/ReadOnlyStringMap;)V
    .locals 2
    .param p1, "source"    # Lorg/apache/logging/log4j/util/ReadOnlyStringMap;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "source"
        }
    .end annotation

    .line 139
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/impl/JdkMapAdapterStringMap;->assertNotFrozen()V

    .line 140
    sget-object v0, Lorg/apache/logging/log4j/core/impl/JdkMapAdapterStringMap;->PUT_ALL:Lorg/apache/logging/log4j/util/TriConsumer;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/impl/JdkMapAdapterStringMap;->map:Ljava/util/Map;

    invoke-interface {p1, v0, v1}, Lorg/apache/logging/log4j/util/ReadOnlyStringMap;->forEach(Lorg/apache/logging/log4j/util/TriConsumer;Ljava/lang/Object;)V

    .line 141
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/impl/JdkMapAdapterStringMap;->sortedKeys:[Ljava/lang/String;

    .line 142
    return-void
.end method

.method public putValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 148
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/impl/JdkMapAdapterStringMap;->assertNotFrozen()V

    .line 149
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/JdkMapAdapterStringMap;->map:Ljava/util/Map;

    const/4 v1, 0x0

    if-nez p2, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    iput-object v1, p0, Lorg/apache/logging/log4j/core/impl/JdkMapAdapterStringMap;->sortedKeys:[Ljava/lang/String;

    .line 151
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "key"
        }
    .end annotation

    .line 155
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/JdkMapAdapterStringMap;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 156
    return-void

    .line 158
    :cond_0
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/impl/JdkMapAdapterStringMap;->assertNotFrozen()V

    .line 159
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/JdkMapAdapterStringMap;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/impl/JdkMapAdapterStringMap;->sortedKeys:[Ljava/lang/String;

    .line 161
    return-void
.end method

.method public size()I
    .locals 1

    .line 114
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/JdkMapAdapterStringMap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public toMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/JdkMapAdapterStringMap;->map:Ljava/util/Map;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/impl/JdkMapAdapterStringMap;->map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0xd

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 166
    .local v0, "result":Ljava/lang/StringBuilder;
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 167
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/impl/JdkMapAdapterStringMap;->getSortedKeys()[Ljava/lang/String;

    move-result-object v1

    .line 168
    .local v1, "keys":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 169
    if-lez v2, :cond_0

    .line 170
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    :cond_0
    aget-object v3, v1, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x3d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/logging/log4j/core/impl/JdkMapAdapterStringMap;->map:Ljava/util/Map;

    aget-object v4, v1, v2

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 174
    .end local v2    # "i":I
    :cond_1
    const/16 v2, 0x7d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 175
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
