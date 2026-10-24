.class public final Lv1/f;
.super Lv1/h;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroid/text/TextPaint;

.field public final synthetic b:Lv1/h;

.field public final synthetic c:Lv1/g;


# direct methods
.method public constructor <init>(Lv1/g;Landroid/text/TextPaint;Lv1/h;)V
    .locals 0

    iput-object p1, p0, Lv1/f;->c:Lv1/g;

    iput-object p2, p0, Lv1/f;->a:Landroid/text/TextPaint;

    iput-object p3, p0, Lv1/f;->b:Lv1/h;

    invoke-direct {p0}, Lv1/h;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    iget-object p0, p0, Lv1/f;->b:Lv1/h;

    invoke-virtual {p0, p1}, Lv1/h;->a(I)V

    return-void
.end method

.method public final b(Landroid/graphics/Typeface;Z)V
    .locals 2

    iget-object v0, p0, Lv1/f;->c:Lv1/g;

    iget-object v1, p0, Lv1/f;->a:Landroid/text/TextPaint;

    invoke-virtual {v0, v1, p1}, Lv1/g;->g(Landroid/text/TextPaint;Landroid/graphics/Typeface;)V

    iget-object p0, p0, Lv1/f;->b:Lv1/h;

    invoke-virtual {p0, p1, p2}, Lv1/h;->b(Landroid/graphics/Typeface;Z)V

    return-void
.end method
