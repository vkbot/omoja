.class public final synthetic Lorg/apache/poi/sl/draw/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:[F

.field public final synthetic b:[I


# direct methods
.method public synthetic constructor <init>([F[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/sl/draw/j;->a:[F

    iput-object p2, p0, Lorg/apache/poi/sl/draw/j;->b:[I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/draw/j;->b:[I

    check-cast p1, Ljava/lang/Float;

    iget-object p0, p0, Lorg/apache/poi/sl/draw/j;->a:[F

    invoke-static {p0, v0, p1}, Lorg/apache/poi/sl/draw/DrawPaint;->c([F[ILjava/lang/Float;)V

    return-void
.end method
