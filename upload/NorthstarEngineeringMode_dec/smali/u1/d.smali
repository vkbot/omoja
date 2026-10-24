.class public final Lu1/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mega/engineeringmode/function/mic/MicActivity;


# direct methods
.method public constructor <init>(Lcom/mega/engineeringmode/function/mic/MicActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu1/d;->c:Lcom/mega/engineeringmode/function/mic/MicActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lu1/d;->c:Lcom/mega/engineeringmode/function/mic/MicActivity;

    iget-object p0, p0, Lcom/mega/engineeringmode/function/mic/MicActivity;->m:Landroid/widget/LinearLayout;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    return-void
.end method
