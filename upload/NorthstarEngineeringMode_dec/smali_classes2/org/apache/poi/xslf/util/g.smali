.class public final synthetic Lorg/apache/poi/xslf/util/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lorg/apache/poi/sl/usermodel/Shape;

    invoke-static {p1}, Lorg/apache/poi/xslf/util/PPTHandler;->i(Lorg/apache/poi/sl/usermodel/Shape;)Z

    move-result p0

    return p0
.end method
