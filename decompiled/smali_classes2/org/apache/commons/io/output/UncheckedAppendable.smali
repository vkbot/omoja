.class public interface abstract Lorg/apache/commons/io/output/UncheckedAppendable;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Appendable;


# direct methods
.method public static on(Ljava/lang/Appendable;)Lorg/apache/commons/io/output/UncheckedAppendable;
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/commons/io/output/UncheckedAppendableImpl;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lorg/apache/commons/io/output/UncheckedAppendableImpl;-><init>(Ljava/lang/Appendable;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Lorg/apache/commons/io/output/UncheckedAppendable;->append(C)Lorg/apache/commons/io/output/UncheckedAppendable;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 0

    .line 6
    invoke-interface {p0, p1}, Lorg/apache/commons/io/output/UncheckedAppendable;->append(Ljava/lang/CharSequence;)Lorg/apache/commons/io/output/UncheckedAppendable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 0

    .line 7
    invoke-interface {p0, p1, p2, p3}, Lorg/apache/commons/io/output/UncheckedAppendable;->append(Ljava/lang/CharSequence;II)Lorg/apache/commons/io/output/UncheckedAppendable;

    move-result-object p1

    return-object p1
.end method

.method public abstract append(C)Lorg/apache/commons/io/output/UncheckedAppendable;
.end method

.method public abstract append(Ljava/lang/CharSequence;)Lorg/apache/commons/io/output/UncheckedAppendable;
.end method

.method public abstract append(Ljava/lang/CharSequence;II)Lorg/apache/commons/io/output/UncheckedAppendable;
.end method
