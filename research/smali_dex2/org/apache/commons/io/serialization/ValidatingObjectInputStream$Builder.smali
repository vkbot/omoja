.class public Lorg/apache/commons/io/serialization/ValidatingObjectInputStream$Builder;
.super Lorg/apache/commons/io/build/AbstractStreamBuilder;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/io/serialization/ValidatingObjectInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/io/build/AbstractStreamBuilder<",
        "Lorg/apache/commons/io/serialization/ValidatingObjectInputStream;",
        "Lorg/apache/commons/io/serialization/ValidatingObjectInputStream$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private predicate:Lorg/apache/commons/io/serialization/ObjectStreamClassPredicate;


# direct methods
.method public constructor <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/io/build/AbstractStreamBuilder;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/apache/commons/io/serialization/ObjectStreamClassPredicate;

    .line 5
    .line 6
    invoke-direct {v0}, Lorg/apache/commons/io/serialization/ObjectStreamClassPredicate;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/apache/commons/io/serialization/ValidatingObjectInputStream$Builder;->predicate:Lorg/apache/commons/io/serialization/ObjectStreamClassPredicate;

    .line 10
    .line 11
    return-void
.end method

.method public static synthetic access$100(Lorg/apache/commons/io/serialization/ValidatingObjectInputStream$Builder;)Lorg/apache/commons/io/serialization/ObjectStreamClassPredicate;
    .registers 1

    .line 1
    iget-object p0, p0, Lorg/apache/commons/io/serialization/ValidatingObjectInputStream$Builder;->predicate:Lorg/apache/commons/io/serialization/ObjectStreamClassPredicate;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public accept(Ljava/util/regex/Pattern;)Lorg/apache/commons/io/serialization/ValidatingObjectInputStream$Builder;
    .registers 3

    .line 8
    iget-object v0, p0, Lorg/apache/commons/io/serialization/ValidatingObjectInputStream$Builder;->predicate:Lorg/apache/commons/io/serialization/ObjectStreamClassPredicate;

    invoke-virtual {v0, p1}, Lorg/apache/commons/io/serialization/ObjectStreamClassPredicate;->accept(Ljava/util/regex/Pattern;)Lorg/apache/commons/io/serialization/ObjectStreamClassPredicate;

    return-object p0
.end method

.method public accept(Lorg/apache/commons/io/serialization/ClassNameMatcher;)Lorg/apache/commons/io/serialization/ValidatingObjectInputStream$Builder;
    .registers 3

    .line 7
    iget-object v0, p0, Lorg/apache/commons/io/serialization/ValidatingObjectInputStream$Builder;->predicate:Lorg/apache/commons/io/serialization/ObjectStreamClassPredicate;

    invoke-virtual {v0, p1}, Lorg/apache/commons/io/serialization/ObjectStreamClassPredicate;->accept(Lorg/apache/commons/io/serialization/ClassNameMatcher;)Lorg/apache/commons/io/serialization/ObjectStreamClassPredicate;

    return-object p0
.end method

.method public varargs accept([Ljava/lang/Class;)Lorg/apache/commons/io/serialization/ValidatingObjectInputStream$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/apache/commons/io/serialization/ValidatingObjectInputStream$Builder;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/serialization/ValidatingObjectInputStream$Builder;->predicate:Lorg/apache/commons/io/serialization/ObjectStreamClassPredicate;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lorg/apache/commons/io/serialization/ObjectStreamClassPredicate;->accept([Ljava/lang/Class;)Lorg/apache/commons/io/serialization/ObjectStreamClassPredicate;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public varargs accept([Ljava/lang/String;)Lorg/apache/commons/io/serialization/ValidatingObjectInputStream$Builder;
    .registers 3

    .line 9
    iget-object v0, p0, Lorg/apache/commons/io/serialization/ValidatingObjectInputStream$Builder;->predicate:Lorg/apache/commons/io/serialization/ObjectStreamClassPredicate;

    invoke-virtual {v0, p1}, Lorg/apache/commons/io/serialization/ObjectStreamClassPredicate;->accept([Ljava/lang/String;)Lorg/apache/commons/io/serialization/ObjectStreamClassPredicate;

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 8
    invoke-virtual {p0}, Lorg/apache/commons/io/serialization/ValidatingObjectInputStream$Builder;->get()Lorg/apache/commons/io/serialization/ValidatingObjectInputStream;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/apache/commons/io/serialization/ValidatingObjectInputStream;
    .registers 3

    .line 1
    new-instance v0, Lorg/apache/commons/io/serialization/ValidatingObjectInputStream;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lorg/apache/commons/io/serialization/ValidatingObjectInputStream;-><init>(Lorg/apache/commons/io/serialization/ValidatingObjectInputStream$Builder;Lorg/apache/commons/io/serialization/ValidatingObjectInputStream$1;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public getPredicate()Lorg/apache/commons/io/serialization/ObjectStreamClassPredicate;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/serialization/ValidatingObjectInputStream$Builder;->predicate:Lorg/apache/commons/io/serialization/ObjectStreamClassPredicate;

    .line 2
    .line 3
    return-object v0
.end method

.method public reject(Ljava/util/regex/Pattern;)Lorg/apache/commons/io/serialization/ValidatingObjectInputStream$Builder;
    .registers 3

    .line 8
    iget-object v0, p0, Lorg/apache/commons/io/serialization/ValidatingObjectInputStream$Builder;->predicate:Lorg/apache/commons/io/serialization/ObjectStreamClassPredicate;

    invoke-virtual {v0, p1}, Lorg/apache/commons/io/serialization/ObjectStreamClassPredicate;->reject(Ljava/util/regex/Pattern;)Lorg/apache/commons/io/serialization/ObjectStreamClassPredicate;

    return-object p0
.end method

.method public reject(Lorg/apache/commons/io/serialization/ClassNameMatcher;)Lorg/apache/commons/io/serialization/ValidatingObjectInputStream$Builder;
    .registers 3

    .line 7
    iget-object v0, p0, Lorg/apache/commons/io/serialization/ValidatingObjectInputStream$Builder;->predicate:Lorg/apache/commons/io/serialization/ObjectStreamClassPredicate;

    invoke-virtual {v0, p1}, Lorg/apache/commons/io/serialization/ObjectStreamClassPredicate;->reject(Lorg/apache/commons/io/serialization/ClassNameMatcher;)Lorg/apache/commons/io/serialization/ObjectStreamClassPredicate;

    return-object p0
.end method

.method public varargs reject([Ljava/lang/Class;)Lorg/apache/commons/io/serialization/ValidatingObjectInputStream$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/apache/commons/io/serialization/ValidatingObjectInputStream$Builder;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/serialization/ValidatingObjectInputStream$Builder;->predicate:Lorg/apache/commons/io/serialization/ObjectStreamClassPredicate;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lorg/apache/commons/io/serialization/ObjectStreamClassPredicate;->reject([Ljava/lang/Class;)Lorg/apache/commons/io/serialization/ObjectStreamClassPredicate;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public varargs reject([Ljava/lang/String;)Lorg/apache/commons/io/serialization/ValidatingObjectInputStream$Builder;
    .registers 3

    .line 9
    iget-object v0, p0, Lorg/apache/commons/io/serialization/ValidatingObjectInputStream$Builder;->predicate:Lorg/apache/commons/io/serialization/ObjectStreamClassPredicate;

    invoke-virtual {v0, p1}, Lorg/apache/commons/io/serialization/ObjectStreamClassPredicate;->reject([Ljava/lang/String;)Lorg/apache/commons/io/serialization/ObjectStreamClassPredicate;

    return-object p0
.end method

.method public setPredicate(Lorg/apache/commons/io/serialization/ObjectStreamClassPredicate;)Lorg/apache/commons/io/serialization/ValidatingObjectInputStream$Builder;
    .registers 2

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    goto :goto_8

    .line 4
    :cond_3
    new-instance p1, Lorg/apache/commons/io/serialization/ObjectStreamClassPredicate;

    .line 5
    .line 6
    invoke-direct {p1}, Lorg/apache/commons/io/serialization/ObjectStreamClassPredicate;-><init>()V

    .line 7
    .line 8
    .line 9
    :goto_8
    iput-object p1, p0, Lorg/apache/commons/io/serialization/ValidatingObjectInputStream$Builder;->predicate:Lorg/apache/commons/io/serialization/ObjectStreamClassPredicate;

    .line 10
    .line 11
    return-object p0
.end method
