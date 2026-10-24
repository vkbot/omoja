.class public Lorg/apache/logging/log4j/spi/DefaultThreadContextStack;
.super Ljava/lang/Object;
.source "DefaultThreadContextStack.java"

# interfaces
.implements Lorg/apache/logging/log4j/spi/ThreadContextStack;
.implements Lorg/apache/logging/log4j/util/StringBuilderFormattable;


# static fields
.field private static final EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

.field private static final STACK:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lorg/apache/logging/log4j/spi/MutableThreadContextStack;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x4d1085L


# instance fields
.field private final useStack:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lorg/apache/logging/log4j/spi/DefaultThreadContextStack;->EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

    .line 39
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/apache/logging/log4j/spi/DefaultThreadContextStack;->STACK:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "useStack"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "useStack"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-boolean p1, p0, Lorg/apache/logging/log4j/spi/DefaultThreadContextStack;->useStack:Z

    .line 45
    return-void
.end method

.method private getNonNullStackCopy()Lorg/apache/logging/log4j/spi/MutableThreadContextStack;
    .locals 2

    .line 48
    sget-object v0, Lorg/apache/logging/log4j/spi/DefaultThreadContextStack;->STACK:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;

    .line 49
    .local v0, "values":Lorg/apache/logging/log4j/spi/MutableThreadContextStack;
    if-nez v0, :cond_0

    new-instance v1, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;

    invoke-direct {v1}, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;-><init>()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;->copy()Lorg/apache/logging/log4j/spi/ThreadContextStack;

    move-result-object v1

    :goto_0
    check-cast v1, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;

    check-cast v1, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;

    return-object v1
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

    .line 33
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/spi/DefaultThreadContextStack;->add(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public add(Ljava/lang/String;)Z
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "s"
        }
    .end annotation

    .line 54
    iget-boolean v0, p0, Lorg/apache/logging/log4j/spi/DefaultThreadContextStack;->useStack:Z

    if-nez v0, :cond_0

    .line 55
    const/4 v0, 0x0

    return v0

    .line 57
    :cond_0
    invoke-direct {p0}, Lorg/apache/logging/log4j/spi/DefaultThreadContextStack;->getNonNullStackCopy()Lorg/apache/logging/log4j/spi/MutableThreadContextStack;

    move-result-object v0

    .line 58
    .local v0, "copy":Lorg/apache/logging/log4j/spi/MutableThreadContextStack;
    invoke-virtual {v0, p1}, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;->add(Ljava/lang/String;)Z

    .line 59
    invoke-virtual {v0}, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;->freeze()V

    .line 60
    sget-object v1, Lorg/apache/logging/log4j/spi/DefaultThreadContextStack;->STACK:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 61
    const/4 v1, 0x1

    return v1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 2
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

    .line 66
    .local p1, "strings":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/String;>;"
    iget-boolean v0, p0, Lorg/apache/logging/log4j/spi/DefaultThreadContextStack;->useStack:Z

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 69
    :cond_0
    invoke-direct {p0}, Lorg/apache/logging/log4j/spi/DefaultThreadContextStack;->getNonNullStackCopy()Lorg/apache/logging/log4j/spi/MutableThreadContextStack;

    move-result-object v0

    .line 70
    .local v0, "copy":Lorg/apache/logging/log4j/spi/MutableThreadContextStack;
    invoke-virtual {v0, p1}, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;->addAll(Ljava/util/Collection;)Z

    .line 71
    invoke-virtual {v0}, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;->freeze()V

    .line 72
    sget-object v1, Lorg/apache/logging/log4j/spi/DefaultThreadContextStack;->STACK:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 73
    const/4 v1, 0x1

    return v1

    .line 67
    .end local v0    # "copy":Lorg/apache/logging/log4j/spi/MutableThreadContextStack;
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public asList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 78
    sget-object v0, Lorg/apache/logging/log4j/spi/DefaultThreadContextStack;->STACK:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;

    .line 79
    .local v0, "values":Lorg/apache/logging/log4j/spi/MutableThreadContextStack;
    if-nez v0, :cond_0

    .line 80
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 82
    :cond_0
    invoke-virtual {v0}, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;->asList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public clear()V
    .locals 1

    .line 87
    sget-object v0, Lorg/apache/logging/log4j/spi/DefaultThreadContextStack;->STACK:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    .line 88
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "o"
        }
    .end annotation

    .line 92
    sget-object v0, Lorg/apache/logging/log4j/spi/DefaultThreadContextStack;->STACK:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;

    .line 93
    .local v0, "values":Lorg/apache/logging/log4j/spi/MutableThreadContextStack;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 3
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

    .line 98
    .local p1, "objects":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 99
    return v1

    .line 102
    :cond_0
    sget-object v0, Lorg/apache/logging/log4j/spi/DefaultThreadContextStack;->STACK:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;

    .line 103
    .local v0, "values":Lorg/apache/logging/log4j/spi/MutableThreadContextStack;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public bridge synthetic copy()Lorg/apache/logging/log4j/ThreadContext$ContextStack;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lorg/apache/logging/log4j/spi/DefaultThreadContextStack;->copy()Lorg/apache/logging/log4j/spi/ThreadContextStack;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lorg/apache/logging/log4j/spi/ThreadContextStack;
    .locals 2

    .line 108
    const/4 v0, 0x0

    .line 109
    .local v0, "values":Lorg/apache/logging/log4j/spi/MutableThreadContextStack;
    iget-boolean v1, p0, Lorg/apache/logging/log4j/spi/DefaultThreadContextStack;->useStack:Z

    if-eqz v1, :cond_1

    sget-object v1, Lorg/apache/logging/log4j/spi/DefaultThreadContextStack;->STACK:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;

    move-object v0, v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 112
    :cond_0
    invoke-virtual {v0}, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;->copy()Lorg/apache/logging/log4j/spi/ThreadContextStack;

    move-result-object v1

    return-object v1

    .line 110
    :cond_1
    :goto_0
    new-instance v1, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;

    invoke-direct {v1}, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;-><init>()V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "obj"
        }
    .end annotation

    .line 117
    if-ne p0, p1, :cond_0

    .line 118
    const/4 v0, 0x1

    return v0

    .line 120
    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 121
    return v0

    .line 123
    :cond_1
    instance-of v1, p1, Lorg/apache/logging/log4j/spi/DefaultThreadContextStack;

    if-eqz v1, :cond_2

    .line 124
    move-object v1, p1

    check-cast v1, Lorg/apache/logging/log4j/spi/DefaultThreadContextStack;

    .line 125
    .local v1, "other":Lorg/apache/logging/log4j/spi/DefaultThreadContextStack;
    iget-boolean v2, p0, Lorg/apache/logging/log4j/spi/DefaultThreadContextStack;->useStack:Z

    iget-boolean v3, v1, Lorg/apache/logging/log4j/spi/DefaultThreadContextStack;->useStack:Z

    if-eq v2, v3, :cond_2

    .line 126
    return v0

    .line 129
    .end local v1    # "other":Lorg/apache/logging/log4j/spi/DefaultThreadContextStack;
    :cond_2
    instance-of v1, p1, Lorg/apache/logging/log4j/spi/ThreadContextStack;

    if-nez v1, :cond_3

    .line 130
    return v0

    .line 132
    :cond_3
    move-object v1, p1

    check-cast v1, Lorg/apache/logging/log4j/spi/ThreadContextStack;

    .line 133
    .local v1, "other":Lorg/apache/logging/log4j/spi/ThreadContextStack;
    sget-object v2, Lorg/apache/logging/log4j/spi/DefaultThreadContextStack;->STACK:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;

    .line 134
    .local v2, "values":Lorg/apache/logging/log4j/spi/MutableThreadContextStack;
    if-nez v2, :cond_4

    .line 135
    return v0

    .line 137
    :cond_4
    invoke-virtual {v2, v1}, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
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

    .line 289
    sget-object v0, Lorg/apache/logging/log4j/spi/DefaultThreadContextStack;->STACK:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;

    .line 290
    .local v0, "values":Lorg/apache/logging/log4j/spi/MutableThreadContextStack;
    if-nez v0, :cond_0

    .line 291
    const-string v1, "[]"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 293
    :cond_0
    invoke-static {p1, v0}, Lorg/apache/logging/log4j/util/StringBuilders;->appendValue(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 295
    :goto_0
    return-void
.end method

.method public getDepth()I
    .locals 2

    .line 142
    sget-object v0, Lorg/apache/logging/log4j/spi/DefaultThreadContextStack;->STACK:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;

    .line 143
    .local v0, "values":Lorg/apache/logging/log4j/spi/MutableThreadContextStack;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;->getDepth()I

    move-result v1

    :goto_0
    return v1
.end method

.method public getImmutableStackOrNull()Lorg/apache/logging/log4j/ThreadContext$ContextStack;
    .locals 1

    .line 319
    sget-object v0, Lorg/apache/logging/log4j/spi/DefaultThreadContextStack;->STACK:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/ThreadContext$ContextStack;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .line 148
    sget-object v0, Lorg/apache/logging/log4j/spi/DefaultThreadContextStack;->STACK:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;

    .line 149
    .local v0, "values":Lorg/apache/logging/log4j/spi/MutableThreadContextStack;
    const/16 v1, 0x1f

    .line 150
    .local v1, "prime":I
    const/4 v2, 0x1

    .line 152
    .local v2, "result":I
    mul-int/lit8 v3, v2, 0x1f

    if-nez v0, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;->hashCode()I

    move-result v4

    :goto_0
    add-int/2addr v3, v4

    .line 153
    .end local v2    # "result":I
    .local v3, "result":I
    return v3
.end method

.method public isEmpty()Z
    .locals 2

    .line 158
    sget-object v0, Lorg/apache/logging/log4j/spi/DefaultThreadContextStack;->STACK:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;

    .line 159
    .local v0, "values":Lorg/apache/logging/log4j/spi/MutableThreadContextStack;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 164
    sget-object v0, Lorg/apache/logging/log4j/spi/DefaultThreadContextStack;->STACK:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;

    .line 165
    .local v0, "values":Lorg/apache/logging/log4j/spi/MutableThreadContextStack;
    if-nez v0, :cond_0

    .line 166
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 167
    .local v1, "empty":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    return-object v2

    .line 169
    .end local v1    # "empty":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    invoke-virtual {v0}, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    return-object v1
.end method

.method public peek()Ljava/lang/String;
    .locals 2

    .line 174
    sget-object v0, Lorg/apache/logging/log4j/spi/DefaultThreadContextStack;->STACK:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;

    .line 175
    .local v0, "values":Lorg/apache/logging/log4j/spi/MutableThreadContextStack;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 178
    :cond_0
    invoke-virtual {v0}, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;->peek()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 176
    :cond_1
    :goto_0
    const-string v1, ""

    return-object v1
.end method

.method public pop()Ljava/lang/String;
    .locals 4

    .line 183
    iget-boolean v0, p0, Lorg/apache/logging/log4j/spi/DefaultThreadContextStack;->useStack:Z

    const-string v1, ""

    if-nez v0, :cond_0

    .line 184
    return-object v1

    .line 186
    :cond_0
    sget-object v0, Lorg/apache/logging/log4j/spi/DefaultThreadContextStack;->STACK:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;

    .line 187
    .local v0, "values":Lorg/apache/logging/log4j/spi/MutableThreadContextStack;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 191
    :cond_1
    invoke-virtual {v0}, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;->copy()Lorg/apache/logging/log4j/spi/ThreadContextStack;

    move-result-object v1

    check-cast v1, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;

    .line 192
    .local v1, "copy":Lorg/apache/logging/log4j/spi/MutableThreadContextStack;
    invoke-virtual {v1}, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;->pop()Ljava/lang/String;

    move-result-object v2

    .line 193
    .local v2, "result":Ljava/lang/String;
    invoke-virtual {v1}, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;->freeze()V

    .line 194
    sget-object v3, Lorg/apache/logging/log4j/spi/DefaultThreadContextStack;->STACK:Ljava/lang/ThreadLocal;

    invoke-virtual {v3, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 195
    return-object v2

    .line 189
    .end local v1    # "copy":Lorg/apache/logging/log4j/spi/MutableThreadContextStack;
    .end local v2    # "result":Ljava/lang/String;
    :cond_2
    :goto_0
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

    .line 200
    iget-boolean v0, p0, Lorg/apache/logging/log4j/spi/DefaultThreadContextStack;->useStack:Z

    if-nez v0, :cond_0

    .line 201
    return-void

    .line 203
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/spi/DefaultThreadContextStack;->add(Ljava/lang/String;)Z

    .line 204
    return-void
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "o"
        }
    .end annotation

    .line 208
    iget-boolean v0, p0, Lorg/apache/logging/log4j/spi/DefaultThreadContextStack;->useStack:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 209
    return v1

    .line 211
    :cond_0
    sget-object v0, Lorg/apache/logging/log4j/spi/DefaultThreadContextStack;->STACK:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;

    .line 212
    .local v0, "values":Lorg/apache/logging/log4j/spi/MutableThreadContextStack;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 215
    :cond_1
    invoke-virtual {v0}, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;->copy()Lorg/apache/logging/log4j/spi/ThreadContextStack;

    move-result-object v1

    check-cast v1, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;

    .line 216
    .local v1, "copy":Lorg/apache/logging/log4j/spi/MutableThreadContextStack;
    invoke-virtual {v1, p1}, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 217
    .local v2, "result":Z
    invoke-virtual {v1}, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;->freeze()V

    .line 218
    sget-object v3, Lorg/apache/logging/log4j/spi/DefaultThreadContextStack;->STACK:Ljava/lang/ThreadLocal;

    invoke-virtual {v3, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 219
    return v2

    .line 213
    .end local v1    # "copy":Lorg/apache/logging/log4j/spi/MutableThreadContextStack;
    .end local v2    # "result":Z
    :cond_2
    :goto_0
    return v1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 4
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

    .line 224
    .local p1, "objects":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-boolean v0, p0, Lorg/apache/logging/log4j/spi/DefaultThreadContextStack;->useStack:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 227
    :cond_0
    sget-object v0, Lorg/apache/logging/log4j/spi/DefaultThreadContextStack;->STACK:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;

    .line 228
    .local v0, "values":Lorg/apache/logging/log4j/spi/MutableThreadContextStack;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 231
    :cond_1
    invoke-virtual {v0}, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;->copy()Lorg/apache/logging/log4j/spi/ThreadContextStack;

    move-result-object v1

    check-cast v1, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;

    .line 232
    .local v1, "copy":Lorg/apache/logging/log4j/spi/MutableThreadContextStack;
    invoke-virtual {v1, p1}, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;->removeAll(Ljava/util/Collection;)Z

    move-result v2

    .line 233
    .local v2, "result":Z
    invoke-virtual {v1}, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;->freeze()V

    .line 234
    sget-object v3, Lorg/apache/logging/log4j/spi/DefaultThreadContextStack;->STACK:Ljava/lang/ThreadLocal;

    invoke-virtual {v3, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 235
    return v2

    .line 229
    .end local v1    # "copy":Lorg/apache/logging/log4j/spi/MutableThreadContextStack;
    .end local v2    # "result":Z
    :cond_2
    :goto_0
    return v1

    .line 225
    .end local v0    # "values":Lorg/apache/logging/log4j/spi/MutableThreadContextStack;
    :cond_3
    :goto_1
    return v1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 4
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

    .line 240
    .local p1, "objects":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-boolean v0, p0, Lorg/apache/logging/log4j/spi/DefaultThreadContextStack;->useStack:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 243
    :cond_0
    sget-object v0, Lorg/apache/logging/log4j/spi/DefaultThreadContextStack;->STACK:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;

    .line 244
    .local v0, "values":Lorg/apache/logging/log4j/spi/MutableThreadContextStack;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 247
    :cond_1
    invoke-virtual {v0}, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;->copy()Lorg/apache/logging/log4j/spi/ThreadContextStack;

    move-result-object v1

    check-cast v1, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;

    .line 248
    .local v1, "copy":Lorg/apache/logging/log4j/spi/MutableThreadContextStack;
    invoke-virtual {v1, p1}, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;->retainAll(Ljava/util/Collection;)Z

    move-result v2

    .line 249
    .local v2, "result":Z
    invoke-virtual {v1}, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;->freeze()V

    .line 250
    sget-object v3, Lorg/apache/logging/log4j/spi/DefaultThreadContextStack;->STACK:Ljava/lang/ThreadLocal;

    invoke-virtual {v3, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 251
    return v2

    .line 245
    .end local v1    # "copy":Lorg/apache/logging/log4j/spi/MutableThreadContextStack;
    .end local v2    # "result":Z
    :cond_2
    :goto_0
    return v1

    .line 241
    .end local v0    # "values":Lorg/apache/logging/log4j/spi/MutableThreadContextStack;
    :cond_3
    :goto_1
    return v1
.end method

.method public size()I
    .locals 2

    .line 256
    sget-object v0, Lorg/apache/logging/log4j/spi/DefaultThreadContextStack;->STACK:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;

    .line 257
    .local v0, "values":Lorg/apache/logging/log4j/spi/MutableThreadContextStack;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;->size()I

    move-result v1

    :goto_0
    return v1
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 2

    .line 262
    sget-object v0, Lorg/apache/logging/log4j/spi/DefaultThreadContextStack;->STACK:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;

    .line 263
    .local v0, "result":Lorg/apache/logging/log4j/spi/MutableThreadContextStack;
    if-nez v0, :cond_0

    .line 264
    sget-object v1, Lorg/apache/logging/log4j/util/Strings;->EMPTY_ARRAY:[Ljava/lang/String;

    return-object v1

    .line 266
    :cond_0
    sget-object v1, Lorg/apache/logging/log4j/spi/DefaultThreadContextStack;->EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3
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

    .line 271
    .local p1, "ts":[Ljava/lang/Object;, "[TT;"
    sget-object v0, Lorg/apache/logging/log4j/spi/DefaultThreadContextStack;->STACK:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;

    .line 272
    .local v0, "result":Lorg/apache/logging/log4j/spi/MutableThreadContextStack;
    if-nez v0, :cond_1

    .line 273
    array-length v1, p1

    if-lez v1, :cond_0

    .line 274
    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, p1, v1

    .line 276
    :cond_0
    return-object p1

    .line 278
    :cond_1
    invoke-virtual {v0, p1}, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 283
    sget-object v0, Lorg/apache/logging/log4j/spi/DefaultThreadContextStack;->STACK:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;

    .line 284
    .local v0, "values":Lorg/apache/logging/log4j/spi/MutableThreadContextStack;
    if-nez v0, :cond_0

    const-string v1, "[]"

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public trim(I)V
    .locals 3
    .param p1, "depth"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "depth"
        }
    .end annotation

    .line 299
    if-ltz p1, :cond_1

    .line 302
    sget-object v0, Lorg/apache/logging/log4j/spi/DefaultThreadContextStack;->STACK:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;

    .line 303
    .local v0, "values":Lorg/apache/logging/log4j/spi/MutableThreadContextStack;
    if-nez v0, :cond_0

    .line 304
    return-void

    .line 306
    :cond_0
    invoke-virtual {v0}, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;->copy()Lorg/apache/logging/log4j/spi/ThreadContextStack;

    move-result-object v1

    check-cast v1, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;

    .line 307
    .local v1, "copy":Lorg/apache/logging/log4j/spi/MutableThreadContextStack;
    invoke-virtual {v1, p1}, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;->trim(I)V

    .line 308
    invoke-virtual {v1}, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;->freeze()V

    .line 309
    sget-object v2, Lorg/apache/logging/log4j/spi/DefaultThreadContextStack;->STACK:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 310
    return-void

    .line 300
    .end local v0    # "values":Lorg/apache/logging/log4j/spi/MutableThreadContextStack;
    .end local v1    # "copy":Lorg/apache/logging/log4j/spi/MutableThreadContextStack;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Maximum stack depth cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
