.class public Lorg/apache/commons/io/serialization/ValidatingObjectInputStream;
.super Ljava/io/ObjectInputStream;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/io/serialization/ValidatingObjectInputStream$Builder;
    }
.end annotation


# instance fields
.field private final predicate:Lorg/apache/commons/io/serialization/ObjectStreamClassPredicate;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 14
    new-instance v0, Lorg/apache/commons/io/serialization/ObjectStreamClassPredicate;

    invoke-direct {v0}, Lorg/apache/commons/io/serialization/ObjectStreamClassPredicate;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/io/serialization/ValidatingObjectInputStream;-><init>(Ljava/io/InputStream;Lorg/apache/commons/io/serialization/ObjectStreamClassPredicate;)V

    return-void
.end method

.method private constructor <init>(Ljava/io/InputStream;Lorg/apache/commons/io/serialization/ObjectStreamClassPredicate;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 16
    iput-object p2, p0, Lorg/apache/commons/io/serialization/ValidatingObjectInputStream;->predicate:Lorg/apache/commons/io/serialization/ObjectStreamClassPredicate;

    return-void
.end method

.method private constructor <init>(Lorg/apache/commons/io/serialization/ValidatingObjectInputStream$Builder;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lorg/apache/commons/io/build/AbstractStreamBuilder;->getInputStream()Ljava/io/InputStream;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p1}, Lorg/apache/commons/io/serialization/ValidatingObjectInputStream$Builder;->access$100(Lorg/apache/commons/io/serialization/ValidatingObjectInputStream$Builder;)Lorg/apache/commons/io/serialization/ObjectStreamClassPredicate;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-direct {p0, v0, p1}, Lorg/apache/commons/io/serialization/ValidatingObjectInputStream;-><init>(Ljava/io/InputStream;Lorg/apache/commons/io/serialization/ObjectStreamClassPredicate;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/commons/io/serialization/ValidatingObjectInputStream$Builder;Lorg/apache/commons/io/serialization/ValidatingObjectInputStream$1;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lorg/apache/commons/io/serialization/ValidatingObjectInputStream;-><init>(Lorg/apache/commons/io/serialization/ValidatingObjectInputStream$Builder;)V

    return-void
.end method

.method public static builder()Lorg/apache/commons/io/serialization/ValidatingObjectInputStream$Builder;
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/commons/io/serialization/ValidatingObjectInputStream$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/apache/commons/io/serialization/ValidatingObjectInputStream$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private checkClassName(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/serialization/ValidatingObjectInputStream;->predicate:Lorg/apache/commons/io/serialization/ObjectStreamClassPredicate;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lorg/apache/commons/io/serialization/ObjectStreamClassPredicate;->test(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/serialization/ValidatingObjectInputStream;->invalidClassNameFound(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method


# virtual methods
.method public accept(Ljava/util/regex/Pattern;)Lorg/apache/commons/io/serialization/ValidatingObjectInputStream;
    .locals 1

    .line 8
    iget-object v0, p0, Lorg/apache/commons/io/serialization/ValidatingObjectInputStream;->predicate:Lorg/apache/commons/io/serialization/ObjectStreamClassPredicate;

    invoke-virtual {v0, p1}, Lorg/apache/commons/io/serialization/ObjectStreamClassPredicate;->accept(Ljava/util/regex/Pattern;)Lorg/apache/commons/io/serialization/ObjectStreamClassPredicate;

    return-object p0
.end method

.method public accept(Lorg/apache/commons/io/serialization/ClassNameMatcher;)Lorg/apache/commons/io/serialization/ValidatingObjectInputStream;
    .locals 1

    .line 7
    iget-object v0, p0, Lorg/apache/commons/io/serialization/ValidatingObjectInputStream;->predicate:Lorg/apache/commons/io/serialization/ObjectStreamClassPredicate;

    invoke-virtual {v0, p1}, Lorg/apache/commons/io/serialization/ObjectStreamClassPredicate;->accept(Lorg/apache/commons/io/serialization/ClassNameMatcher;)Lorg/apache/commons/io/serialization/ObjectStreamClassPredicate;

    return-object p0
.end method

.method public varargs accept([Ljava/lang/Class;)Lorg/apache/commons/io/serialization/ValidatingObjectInputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/apache/commons/io/serialization/ValidatingObjectInputStream;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/serialization/ValidatingObjectInputStream;->predicate:Lorg/apache/commons/io/serialization/ObjectStreamClassPredicate;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lorg/apache/commons/io/serialization/ObjectStreamClassPredicate;->accept([Ljava/lang/Class;)Lorg/apache/commons/io/serialization/ObjectStreamClassPredicate;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public varargs accept([Ljava/lang/String;)Lorg/apache/commons/io/serialization/ValidatingObjectInputStream;
    .locals 1

    .line 9
    iget-object v0, p0, Lorg/apache/commons/io/serialization/ValidatingObjectInputStream;->predicate:Lorg/apache/commons/io/serialization/ObjectStreamClassPredicate;

    invoke-virtual {v0, p1}, Lorg/apache/commons/io/serialization/ObjectStreamClassPredicate;->accept([Ljava/lang/String;)Lorg/apache/commons/io/serialization/ObjectStreamClassPredicate;

    return-object p0
.end method

.method public invalidClassNameFound(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/io/InvalidClassException;

    .line 2
    .line 3
    const-string v1, "Class name not accepted: "

    .line 4
    .line 5
    invoke-static {v1, p1}, Lai/onnxruntime/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-direct {v0, p1}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    throw v0
.end method

.method public readObjectCast()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .line 1
    invoke-super {p0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public reject(Ljava/util/regex/Pattern;)Lorg/apache/commons/io/serialization/ValidatingObjectInputStream;
    .locals 1

    .line 8
    iget-object v0, p0, Lorg/apache/commons/io/serialization/ValidatingObjectInputStream;->predicate:Lorg/apache/commons/io/serialization/ObjectStreamClassPredicate;

    invoke-virtual {v0, p1}, Lorg/apache/commons/io/serialization/ObjectStreamClassPredicate;->reject(Ljava/util/regex/Pattern;)Lorg/apache/commons/io/serialization/ObjectStreamClassPredicate;

    return-object p0
.end method

.method public reject(Lorg/apache/commons/io/serialization/ClassNameMatcher;)Lorg/apache/commons/io/serialization/ValidatingObjectInputStream;
    .locals 1

    .line 7
    iget-object v0, p0, Lorg/apache/commons/io/serialization/ValidatingObjectInputStream;->predicate:Lorg/apache/commons/io/serialization/ObjectStreamClassPredicate;

    invoke-virtual {v0, p1}, Lorg/apache/commons/io/serialization/ObjectStreamClassPredicate;->reject(Lorg/apache/commons/io/serialization/ClassNameMatcher;)Lorg/apache/commons/io/serialization/ObjectStreamClassPredicate;

    return-object p0
.end method

.method public varargs reject([Ljava/lang/Class;)Lorg/apache/commons/io/serialization/ValidatingObjectInputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/apache/commons/io/serialization/ValidatingObjectInputStream;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/serialization/ValidatingObjectInputStream;->predicate:Lorg/apache/commons/io/serialization/ObjectStreamClassPredicate;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lorg/apache/commons/io/serialization/ObjectStreamClassPredicate;->reject([Ljava/lang/Class;)Lorg/apache/commons/io/serialization/ObjectStreamClassPredicate;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public varargs reject([Ljava/lang/String;)Lorg/apache/commons/io/serialization/ValidatingObjectInputStream;
    .locals 1

    .line 9
    iget-object v0, p0, Lorg/apache/commons/io/serialization/ValidatingObjectInputStream;->predicate:Lorg/apache/commons/io/serialization/ObjectStreamClassPredicate;

    invoke-virtual {v0, p1}, Lorg/apache/commons/io/serialization/ObjectStreamClassPredicate;->reject([Ljava/lang/String;)Lorg/apache/commons/io/serialization/ObjectStreamClassPredicate;

    return-object p0
.end method

.method public resolveClass(Ljava/io/ObjectStreamClass;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ObjectStreamClass;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Lorg/apache/commons/io/serialization/ValidatingObjectInputStream;->checkClassName(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1}, Ljava/io/ObjectInputStream;->resolveClass(Ljava/io/ObjectStreamClass;)Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public resolveProxyClass([Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    if-ge v1, v0, :cond_0

    .line 4
    .line 5
    aget-object v2, p1, v1

    .line 6
    .line 7
    invoke-direct {p0, v2}, Lorg/apache/commons/io/serialization/ValidatingObjectInputStream;->checkClassName(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    add-int/lit8 v1, v1, 0x1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-super {p0, p1}, Ljava/io/ObjectInputStream;->resolveProxyClass([Ljava/lang/String;)Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method
