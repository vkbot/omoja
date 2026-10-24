.class public final synthetic Lh1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv2/b;


# instance fields
.field public final synthetic a:Lcom/mega/engineeringmode/function/androidauto/AndroidAutoTestActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/mega/engineeringmode/function/androidauto/AndroidAutoTestActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh1/b;->a:Lcom/mega/engineeringmode/function/androidauto/AndroidAutoTestActivity;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    iget-object p0, p0, Lh1/b;->a:Lcom/mega/engineeringmode/function/androidauto/AndroidAutoTestActivity;

    iget-object p0, p0, Lcom/mega/engineeringmode/function/androidauto/AndroidAutoTestActivity;->k:Landroid/os/Handler;

    const/4 v0, 0x2

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-static {v2, v0, p1, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
