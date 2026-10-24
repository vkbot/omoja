.class public final Lorg/apache/logging/log4j/core/util/TypeUtil;
.super Ljava/lang/Object;
.source "TypeUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method public static getAllDeclaredFields(Ljava/lang/Class;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cls"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation

    .line 55
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .local v0, "fields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    :goto_0
    if-eqz p0, :cond_0

    .line 57
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 58
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    .line 60
    :cond_0
    return-object v0
.end method

.method private static getEffectiveLowerBounds(Ljava/lang/reflect/WildcardType;)[Ljava/lang/reflect/Type;
    .locals 4
    .param p0, "type"    # Ljava/lang/reflect/WildcardType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "type"
        }
    .end annotation

    .line 213
    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 214
    .local v0, "lowerBounds":[Ljava/lang/reflect/Type;
    array-length v1, v0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/reflect/Type;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method private static getEffectiveUpperBounds(Ljava/lang/reflect/WildcardType;)[Ljava/lang/reflect/Type;
    .locals 4
    .param p0, "type"    # Ljava/lang/reflect/WildcardType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "type"
        }
    .end annotation

    .line 208
    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 209
    .local v0, "upperBounds":[Ljava/lang/reflect/Type;
    array-length v1, v0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/reflect/Type;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/Object;

    aput-object v3, v1, v2

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public static isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z
    .locals 4
    .param p0, "lhs"    # Ljava/lang/reflect/Type;
    .param p1, "rhs"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "lhs",
            "rhs"
        }
    .end annotation

    .line 71
    const-string v0, "No left hand side type provided"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 72
    const-string v0, "No right hand side type provided"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 73
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 74
    return v1

    .line 76
    :cond_0
    const-class v0, Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    return v1

    .line 81
    :cond_1
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_4

    .line 82
    move-object v0, p0

    check-cast v0, Ljava/lang/Class;

    .line 83
    .local v0, "lhsClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    instance-of v1, p1, Ljava/lang/Class;

    if-eqz v1, :cond_2

    .line 85
    move-object v1, p1

    check-cast v1, Ljava/lang/Class;

    .line 86
    .local v1, "rhsClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    return v2

    .line 88
    .end local v1    # "rhsClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    instance-of v1, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_3

    .line 90
    move-object v1, p1

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 91
    .local v1, "rhsRawType":Ljava/lang/reflect/Type;
    instance-of v2, v1, Ljava/lang/Class;

    if-eqz v2, :cond_3

    .line 92
    move-object v2, v1

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    return v2

    .line 95
    .end local v1    # "rhsRawType":Ljava/lang/reflect/Type;
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_4

    instance-of v1, p1, Ljava/lang/reflect/GenericArrayType;

    if-eqz v1, :cond_4

    .line 97
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {v2}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/logging/log4j/core/util/TypeUtil;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result v1

    return v1

    .line 101
    .end local v0    # "lhsClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_4
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_7

    .line 102
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 103
    .local v0, "lhsType":Ljava/lang/reflect/ParameterizedType;
    instance-of v1, p1, Ljava/lang/Class;

    if-eqz v1, :cond_6

    .line 104
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 105
    .local v1, "lhsRawType":Ljava/lang/reflect/Type;
    instance-of v2, v1, Ljava/lang/Class;

    if-eqz v2, :cond_5

    .line 106
    move-object v2, v1

    check-cast v2, Ljava/lang/Class;

    move-object v3, p1

    check-cast v3, Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    return v2

    .line 105
    .end local v1    # "lhsRawType":Ljava/lang/reflect/Type;
    :cond_5
    goto :goto_0

    .line 108
    :cond_6
    instance-of v1, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_7

    .line 109
    move-object v1, p1

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    .line 110
    .local v1, "rhsType":Ljava/lang/reflect/ParameterizedType;
    invoke-static {v0, v1}, Lorg/apache/logging/log4j/core/util/TypeUtil;->isParameterizedAssignable(Ljava/lang/reflect/ParameterizedType;Ljava/lang/reflect/ParameterizedType;)Z

    move-result v2

    return v2

    .line 114
    .end local v0    # "lhsType":Ljava/lang/reflect/ParameterizedType;
    .end local v1    # "rhsType":Ljava/lang/reflect/ParameterizedType;
    :cond_7
    :goto_0
    instance-of v0, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_a

    .line 115
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {v0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 116
    .local v0, "lhsComponentType":Ljava/lang/reflect/Type;
    instance-of v1, p1, Ljava/lang/Class;

    if-eqz v1, :cond_9

    .line 118
    move-object v1, p1

    check-cast v1, Ljava/lang/Class;

    .line 119
    .local v1, "rhsClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 120
    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/apache/logging/log4j/core/util/TypeUtil;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result v2

    return v2

    .line 119
    .end local v1    # "rhsClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_8
    goto :goto_1

    .line 122
    :cond_9
    instance-of v1, p1, Ljava/lang/reflect/GenericArrayType;

    if-eqz v1, :cond_a

    .line 123
    move-object v1, p1

    check-cast v1, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {v1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/logging/log4j/core/util/TypeUtil;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result v1

    return v1

    .line 127
    .end local v0    # "lhsComponentType":Ljava/lang/reflect/Type;
    :cond_a
    :goto_1
    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_b

    .line 128
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/WildcardType;

    invoke-static {v0, p1}, Lorg/apache/logging/log4j/core/util/TypeUtil;->isWildcardAssignable(Ljava/lang/reflect/WildcardType;Ljava/lang/reflect/Type;)Z

    move-result v0

    return v0

    .line 131
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method private static isBoundAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z
    .locals 1
    .param p0, "lhs"    # Ljava/lang/reflect/Type;
    .param p1, "rhs"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "lhs",
            "rhs"
        }
    .end annotation

    .line 218
    if-eqz p1, :cond_1

    if-eqz p0, :cond_0

    invoke-static {p0, p1}, Lorg/apache/logging/log4j/core/util/TypeUtil;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static isParameterizedAssignable(Ljava/lang/reflect/ParameterizedType;Ljava/lang/reflect/ParameterizedType;)Z
    .locals 9
    .param p0, "lhs"    # Ljava/lang/reflect/ParameterizedType;
    .param p1, "rhs"    # Ljava/lang/reflect/ParameterizedType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "lhs",
            "rhs"
        }
    .end annotation

    .line 135
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 137
    return v1

    .line 139
    :cond_0
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 140
    .local v0, "lhsTypeArguments":[Ljava/lang/reflect/Type;
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v2

    .line 141
    .local v2, "rhsTypeArguments":[Ljava/lang/reflect/Type;
    array-length v3, v0

    .line 142
    .local v3, "size":I
    array-length v4, v2

    const/4 v5, 0x0

    if-eq v4, v3, :cond_1

    .line 144
    return v5

    .line 146
    :cond_1
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_4

    .line 148
    aget-object v6, v0, v4

    .line 149
    .local v6, "lhsArgument":Ljava/lang/reflect/Type;
    aget-object v7, v2, v4

    .line 150
    .local v7, "rhsArgument":Ljava/lang/reflect/Type;
    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    instance-of v8, v6, Ljava/lang/reflect/WildcardType;

    if-eqz v8, :cond_2

    move-object v8, v6

    check-cast v8, Ljava/lang/reflect/WildcardType;

    .line 152
    invoke-static {v8, v7}, Lorg/apache/logging/log4j/core/util/TypeUtil;->isWildcardAssignable(Ljava/lang/reflect/WildcardType;Ljava/lang/reflect/Type;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 153
    :cond_2
    return v5

    .line 146
    .end local v6    # "lhsArgument":Ljava/lang/reflect/Type;
    .end local v7    # "rhsArgument":Ljava/lang/reflect/Type;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 156
    .end local v4    # "i":I
    :cond_4
    return v1
.end method

.method private static isWildcardAssignable(Ljava/lang/reflect/WildcardType;Ljava/lang/reflect/Type;)Z
    .locals 13
    .param p0, "lhs"    # Ljava/lang/reflect/WildcardType;
    .param p1, "rhs"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "lhs",
            "rhs"
        }
    .end annotation

    .line 160
    invoke-static {p0}, Lorg/apache/logging/log4j/core/util/TypeUtil;->getEffectiveUpperBounds(Ljava/lang/reflect/WildcardType;)[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 161
    .local v0, "lhsUpperBounds":[Ljava/lang/reflect/Type;
    invoke-static {p0}, Lorg/apache/logging/log4j/core/util/TypeUtil;->getEffectiveLowerBounds(Ljava/lang/reflect/WildcardType;)[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 162
    .local v1, "lhsLowerBounds":[Ljava/lang/reflect/Type;
    instance-of v2, p1, Ljava/lang/reflect/WildcardType;

    const/4 v3, 0x0

    if-eqz v2, :cond_a

    .line 164
    move-object v2, p1

    check-cast v2, Ljava/lang/reflect/WildcardType;

    .line 165
    .local v2, "rhsType":Ljava/lang/reflect/WildcardType;
    invoke-static {v2}, Lorg/apache/logging/log4j/core/util/TypeUtil;->getEffectiveUpperBounds(Ljava/lang/reflect/WildcardType;)[Ljava/lang/reflect/Type;

    move-result-object v4

    .line 166
    .local v4, "rhsUpperBounds":[Ljava/lang/reflect/Type;
    invoke-static {v2}, Lorg/apache/logging/log4j/core/util/TypeUtil;->getEffectiveLowerBounds(Ljava/lang/reflect/WildcardType;)[Ljava/lang/reflect/Type;

    move-result-object v5

    .line 167
    .local v5, "rhsLowerBounds":[Ljava/lang/reflect/Type;
    array-length v6, v0

    move v7, v3

    :goto_0
    if-ge v7, v6, :cond_4

    aget-object v8, v0, v7

    .line 168
    .local v8, "lhsUpperBound":Ljava/lang/reflect/Type;
    array-length v9, v4

    move v10, v3

    :goto_1
    if-ge v10, v9, :cond_1

    aget-object v11, v4, v10

    .line 169
    .local v11, "rhsUpperBound":Ljava/lang/reflect/Type;
    invoke-static {v8, v11}, Lorg/apache/logging/log4j/core/util/TypeUtil;->isBoundAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 170
    return v3

    .line 168
    .end local v11    # "rhsUpperBound":Ljava/lang/reflect/Type;
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 173
    :cond_1
    array-length v9, v5

    move v10, v3

    :goto_2
    if-ge v10, v9, :cond_3

    aget-object v11, v5, v10

    .line 174
    .local v11, "rhsLowerBound":Ljava/lang/reflect/Type;
    invoke-static {v8, v11}, Lorg/apache/logging/log4j/core/util/TypeUtil;->isBoundAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 175
    return v3

    .line 173
    .end local v11    # "rhsLowerBound":Ljava/lang/reflect/Type;
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 167
    .end local v8    # "lhsUpperBound":Ljava/lang/reflect/Type;
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 179
    :cond_4
    array-length v6, v1

    move v7, v3

    :goto_3
    if-ge v7, v6, :cond_9

    aget-object v8, v1, v7

    .line 180
    .local v8, "lhsLowerBound":Ljava/lang/reflect/Type;
    array-length v9, v4

    move v10, v3

    :goto_4
    if-ge v10, v9, :cond_6

    aget-object v11, v4, v10

    .line 181
    .local v11, "rhsUpperBound":Ljava/lang/reflect/Type;
    invoke-static {v11, v8}, Lorg/apache/logging/log4j/core/util/TypeUtil;->isBoundAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result v12

    if-nez v12, :cond_5

    .line 182
    return v3

    .line 180
    .end local v11    # "rhsUpperBound":Ljava/lang/reflect/Type;
    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 185
    :cond_6
    array-length v9, v5

    move v10, v3

    :goto_5
    if-ge v10, v9, :cond_8

    aget-object v11, v5, v10

    .line 186
    .local v11, "rhsLowerBound":Ljava/lang/reflect/Type;
    invoke-static {v11, v8}, Lorg/apache/logging/log4j/core/util/TypeUtil;->isBoundAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result v12

    if-nez v12, :cond_7

    .line 187
    return v3

    .line 185
    .end local v11    # "rhsLowerBound":Ljava/lang/reflect/Type;
    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 179
    .end local v8    # "lhsLowerBound":Ljava/lang/reflect/Type;
    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 191
    .end local v2    # "rhsType":Ljava/lang/reflect/WildcardType;
    .end local v4    # "rhsUpperBounds":[Ljava/lang/reflect/Type;
    .end local v5    # "rhsLowerBounds":[Ljava/lang/reflect/Type;
    :cond_9
    goto :goto_8

    .line 193
    :cond_a
    array-length v2, v0

    move v4, v3

    :goto_6
    if-ge v4, v2, :cond_c

    aget-object v5, v0, v4

    .line 194
    .local v5, "lhsUpperBound":Ljava/lang/reflect/Type;
    invoke-static {v5, p1}, Lorg/apache/logging/log4j/core/util/TypeUtil;->isBoundAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 195
    return v3

    .line 193
    .end local v5    # "lhsUpperBound":Ljava/lang/reflect/Type;
    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 198
    :cond_c
    array-length v2, v1

    move v4, v3

    :goto_7
    if-ge v4, v2, :cond_e

    aget-object v5, v1, v4

    .line 199
    .local v5, "lhsLowerBound":Ljava/lang/reflect/Type;
    invoke-static {v5, p1}, Lorg/apache/logging/log4j/core/util/TypeUtil;->isBoundAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result v6

    if-nez v6, :cond_d

    .line 200
    return v3

    .line 198
    .end local v5    # "lhsLowerBound":Ljava/lang/reflect/Type;
    :cond_d
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 204
    :cond_e
    :goto_8
    const/4 v2, 0x1

    return v2
.end method
