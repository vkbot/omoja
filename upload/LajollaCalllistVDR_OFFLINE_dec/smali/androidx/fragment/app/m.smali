.class public final Landroidx/fragment/app/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic a:Landroidx/fragment/app/p;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/p;)V
    .locals 0

    iput-object p1, p0, Landroidx/fragment/app/m;->a:Landroidx/fragment/app/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/m;->a:Landroidx/fragment/app/p;

    iget-object p1, p0, Landroidx/fragment/app/p;->d0:Landroid/app/Dialog;

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Landroidx/fragment/app/p;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method
