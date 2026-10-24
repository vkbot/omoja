.class public final synthetic Lorg/apache/poi/openxml4j/opc/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lorg/apache/poi/openxml4j/opc/ZipPackage$EntryTriple;

    invoke-static {p1}, Lorg/apache/poi/openxml4j/opc/ZipPackage;->c(Lorg/apache/poi/openxml4j/opc/ZipPackage$EntryTriple;)Z

    move-result p0

    return p0
.end method
