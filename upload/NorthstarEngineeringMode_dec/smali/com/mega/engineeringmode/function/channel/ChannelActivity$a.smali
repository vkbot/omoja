.class public final Lcom/mega/engineeringmode/function/channel/ChannelActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mega/engineeringmode/function/channel/ChannelActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/mega/engineeringmode/function/channel/ChannelActivity;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/mega/engineeringmode/function/channel/ChannelActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mega/engineeringmode/function/channel/ChannelActivity$a;->a:Lcom/mega/engineeringmode/function/channel/ChannelActivity;

    iput-object p2, p0, Lcom/mega/engineeringmode/function/channel/ChannelActivity$a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/mega/engineeringmode/function/channel/ChannelActivity$a;->a:Lcom/mega/engineeringmode/function/channel/ChannelActivity;

    iget-object p2, p1, Lcom/mega/engineeringmode/function/channel/ChannelActivity;->i:Lcom/mega/engineeringmode/databinding/ActivityChannelSelectBinding;

    if-eqz p2, :cond_0

    iget-object p2, p2, Lcom/mega/engineeringmode/databinding/ActivityChannelSelectBinding;->c:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {p2}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    iget-object p0, p0, Lcom/mega/engineeringmode/function/channel/ChannelActivity$a;->b:Ljava/lang/String;

    invoke-static {p1, p0, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    const-string p0, "binding"

    invoke-static {p0}, Lo3/h;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
