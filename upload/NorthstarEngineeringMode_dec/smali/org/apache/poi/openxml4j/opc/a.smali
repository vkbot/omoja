.class public final synthetic Lorg/apache/poi/openxml4j/opc/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-static {p1, p2}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method
