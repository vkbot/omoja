.class final Lorg/apache/commons/io/output/UncheckedAppendableImpl;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lorg/apache/commons/io/output/UncheckedAppendable;


# instance fields
.field private final appendable:Ljava/lang/Appendable;


# direct methods
.method public constructor <init>(Ljava/lang/Appendable;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "appendable"

    .line 5
    .line 6
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    check-cast p1, Ljava/lang/Appendable;

    .line 10
    .line 11
    iput-object p1, p0, Lorg/apache/commons/io/output/UncheckedAppendableImpl;->appendable:Ljava/lang/Appendable;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/output/UncheckedAppendableImpl;->append(C)Lorg/apache/commons/io/output/UncheckedAppendable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/output/UncheckedAppendableImpl;->append(Ljava/lang/CharSequence;)Lorg/apache/commons/io/output/UncheckedAppendable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 0

    .line 25
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/io/output/UncheckedAppendableImpl;->append(Ljava/lang/CharSequence;II)Lorg/apache/commons/io/output/UncheckedAppendable;

    move-result-object p1

    return-object p1
.end method

.method public append(C)Lorg/apache/commons/io/output/UncheckedAppendable;
    .locals 3

    .line 26
    iget-object v0, p0, Lorg/apache/commons/io/output/UncheckedAppendableImpl;->appendable:Ljava/lang/Appendable;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/commons/io/output/c;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lorg/apache/commons/io/output/c;-><init>(Ljava/lang/Appendable;I)V

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    invoke-static {v1, p1}, Lorg/apache/commons/io/function/Uncheck;->apply(Lorg/apache/commons/io/function/IOFunction;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Lorg/apache/commons/io/output/UncheckedAppendable;
    .locals 3

    .line 27
    iget-object v0, p0, Lorg/apache/commons/io/output/UncheckedAppendableImpl;->appendable:Ljava/lang/Appendable;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/commons/io/output/c;

    const/4 v2, 0x2

    invoke-direct {v1, v0, v2}, Lorg/apache/commons/io/output/c;-><init>(Ljava/lang/Appendable;I)V

    invoke-static {v1, p1}, Lorg/apache/commons/io/function/Uncheck;->apply(Lorg/apache/commons/io/function/IOFunction;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;II)Lorg/apache/commons/io/output/UncheckedAppendable;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/output/UncheckedAppendableImpl;->appendable:Ljava/lang/Appendable;

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    new-instance v1, Lorg/apache/commons/io/output/c;

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-direct {v1, v0, v2}, Lorg/apache/commons/io/output/c;-><init>(Ljava/lang/Appendable;I)V

    .line 10
    .line 11
    .line 12
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object p3

    .line 20
    invoke-static {v1, p1, p2, p3}, Lorg/apache/commons/io/function/Uncheck;->apply(Lorg/apache/commons/io/function/IOTriFunction;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/output/UncheckedAppendableImpl;->appendable:Ljava/lang/Appendable;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
