.class public final synthetic Lorg/apache/poi/sl/draw/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljavax/imageio/ImageTypeSpecifier;

    invoke-static {p1}, Lorg/apache/poi/sl/draw/BitmapImageRenderer;->e(Ljavax/imageio/ImageTypeSpecifier;)Z

    move-result p0

    return p0
.end method
