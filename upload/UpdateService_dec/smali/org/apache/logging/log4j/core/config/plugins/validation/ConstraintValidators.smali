.class public final Lorg/apache/logging/log4j/core/config/plugins/validation/ConstraintValidators;
.super Ljava/lang/Object;
.source "ConstraintValidators.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public static varargs findValidators([Ljava/lang/annotation/Annotation;)Ljava/util/Collection;
    .locals 6
    .param p0, "annotations"    # [Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "annotations"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Ljava/util/Collection<",
            "Lorg/apache/logging/log4j/core/config/plugins/validation/ConstraintValidator<",
            "*>;>;"
        }
    .end annotation

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .local v0, "validators":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/logging/log4j/core/config/plugins/validation/ConstraintValidator<*>;>;"
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 48
    .local v3, "annotation":Ljava/lang/annotation/Annotation;
    invoke-interface {v3}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v4

    .line 49
    .local v4, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    const-class v5, Lorg/apache/logging/log4j/core/config/plugins/validation/Constraint;

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 50
    invoke-static {v3, v4}, Lorg/apache/logging/log4j/core/config/plugins/validation/ConstraintValidators;->getValidator(Ljava/lang/annotation/Annotation;Ljava/lang/Class;)Lorg/apache/logging/log4j/core/config/plugins/validation/ConstraintValidator;

    move-result-object v5

    .line 51
    .local v5, "validator":Lorg/apache/logging/log4j/core/config/plugins/validation/ConstraintValidator;, "Lorg/apache/logging/log4j/core/config/plugins/validation/ConstraintValidator<*>;"
    if-eqz v5, :cond_0

    .line 52
    invoke-interface {v0, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 47
    .end local v3    # "annotation":Ljava/lang/annotation/Annotation;
    .end local v4    # "type":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    .end local v5    # "validator":Lorg/apache/logging/log4j/core/config/plugins/validation/ConstraintValidator;, "Lorg/apache/logging/log4j/core/config/plugins/validation/ConstraintValidator<*>;"
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 56
    :cond_1
    return-object v0
.end method

.method private static getConstraintValidatorAnnotationType(Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/logging/log4j/core/config/plugins/validation/ConstraintValidator<",
            "*>;>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .line 74
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/logging/log4j/core/config/plugins/validation/ConstraintValidator<*>;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 75
    .local v4, "parentType":Ljava/lang/reflect/Type;
    instance-of v5, v4, Ljava/lang/reflect/ParameterizedType;

    if-eqz v5, :cond_0

    .line 76
    move-object v5, v4

    check-cast v5, Ljava/lang/reflect/ParameterizedType;

    .line 77
    .local v5, "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    const-class v6, Lorg/apache/logging/log4j/core/config/plugins/validation/ConstraintValidator;

    invoke-interface {v5}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 78
    invoke-interface {v5}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    aget-object v0, v0, v2

    return-object v0

    .line 74
    .end local v4    # "parentType":Ljava/lang/reflect/Type;
    .end local v5    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 82
    :cond_1
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    return-object v0
.end method

.method private static getValidator(Ljava/lang/annotation/Annotation;Ljava/lang/Class;)Lorg/apache/logging/log4j/core/config/plugins/validation/ConstraintValidator;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "annotation",
            "type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(TA;",
            "Ljava/lang/Class<",
            "+TA;>;)",
            "Lorg/apache/logging/log4j/core/config/plugins/validation/ConstraintValidator<",
            "TA;>;"
        }
    .end annotation

    .line 61
    .local p0, "annotation":Ljava/lang/annotation/Annotation;, "TA;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<+TA;>;"
    const-class v0, Lorg/apache/logging/log4j/core/config/plugins/validation/Constraint;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/config/plugins/validation/Constraint;

    .line 62
    .local v0, "constraint":Lorg/apache/logging/log4j/core/config/plugins/validation/Constraint;
    invoke-interface {v0}, Lorg/apache/logging/log4j/core/config/plugins/validation/Constraint;->value()Ljava/lang/Class;

    move-result-object v1

    .line 63
    .local v1, "validatorClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/logging/log4j/core/config/plugins/validation/ConstraintValidator<*>;>;"
    invoke-static {v1}, Lorg/apache/logging/log4j/core/config/plugins/validation/ConstraintValidators;->getConstraintValidatorAnnotationType(Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 65
    nop

    .line 66
    invoke-static {v1}, Lorg/apache/logging/log4j/core/util/ReflectionUtil;->instantiate(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/logging/log4j/core/config/plugins/validation/ConstraintValidator;

    .line 67
    .local v2, "validator":Lorg/apache/logging/log4j/core/config/plugins/validation/ConstraintValidator;, "Lorg/apache/logging/log4j/core/config/plugins/validation/ConstraintValidator<TA;>;"
    invoke-interface {v2, p0}, Lorg/apache/logging/log4j/core/config/plugins/validation/ConstraintValidator;->initialize(Ljava/lang/annotation/Annotation;)V

    .line 68
    return-object v2

    .line 70
    .end local v2    # "validator":Lorg/apache/logging/log4j/core/config/plugins/validation/ConstraintValidator;, "Lorg/apache/logging/log4j/core/config/plugins/validation/ConstraintValidator<TA;>;"
    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method
