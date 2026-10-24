.class public final Landroidx/appcompat/widget/w0;
.super Landroidx/appcompat/widget/u0;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/widget/u0;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/widget/TextView;)Z
    .locals 0

    invoke-static {p1}, Landroidx/appcompat/widget/v0;->t(Landroid/widget/TextView;)Z

    move-result p1

    return p1
.end method

.method public b(Landroid/text/StaticLayout$Builder;Landroid/widget/TextView;)V
    .locals 0

    invoke-static {p2}, Landroidx/appcompat/widget/v0;->d(Landroid/widget/TextView;)Landroid/text/TextDirectionHeuristic;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/text/StaticLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;

    return-void
.end method
