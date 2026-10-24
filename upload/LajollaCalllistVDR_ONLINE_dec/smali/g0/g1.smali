.class public final Lg0/g1;
.super Lg0/f1;
.source "SourceFile"


# static fields
.field public static final n:Lg0/i1;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    invoke-static {}, Landroidx/work/impl/utils/a;->c()Landroid/view/WindowInsets;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lg0/i1;->h(Landroid/view/WindowInsets;Landroid/view/View;)Lg0/i1;

    move-result-object v0

    sput-object v0, Lg0/g1;->n:Lg0/i1;

    return-void
.end method

.method public constructor <init>(Lg0/i1;Landroid/view/WindowInsets;)V
    .locals 0
    .param p1    # Lg0/i1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/WindowInsets;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lg0/f1;-><init>(Lg0/i1;Landroid/view/WindowInsets;)V

    return-void
.end method


# virtual methods
.method public final d(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method
