.class public final Lcom/mega/engineeringmode/function/screen/MasterScreenActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/engineeringmode/function/screen/MasterScreenActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/mega/engineeringmode/function/screen/MasterScreenActivity;


# direct methods
.method public constructor <init>(Lcom/mega/engineeringmode/function/screen/MasterScreenActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mega/engineeringmode/function/screen/MasterScreenActivity$a;->c:Lcom/mega/engineeringmode/function/screen/MasterScreenActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object p0, p0, Lcom/mega/engineeringmode/function/screen/MasterScreenActivity$a;->c:Lcom/mega/engineeringmode/function/screen/MasterScreenActivity;

    iget-object v0, p0, Lcom/mega/engineeringmode/function/screen/MasterScreenActivity;->l:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/screen/MasterScreenActivity;->m:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/mega/engineeringmode/function/screen/MasterScreenActivity;->o:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
