.class public final synthetic Lorg/apache/poi/sl/draw/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiFunction;


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    new-instance p0, Lorg/apache/poi/sl/draw/PathGradientPaint;

    check-cast p1, [F

    check-cast p2, [Ljava/awt/Color;

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/sl/draw/PathGradientPaint;-><init>([F[Ljava/awt/Color;)V

    check-cast p0, Ljava/awt/Paint;

    return-object p0
.end method
